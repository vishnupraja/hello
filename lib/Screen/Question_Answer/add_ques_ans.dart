import 'dart:io';

import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Model/GetAddModel.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:provider/provider.dart';

class AddQuesAnsPage extends StatefulWidget {
  const AddQuesAnsPage({Key? key}) : super(key: key);

  @override
  State<AddQuesAnsPage> createState() => _AddQuesAnsPageState();
}

class _AddQuesAnsPageState extends State<AddQuesAnsPage> {
  File? _finalImage;

  var desController = TextEditingController();

  getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      cropImage(image.path);
    }
  }

  cropImage(image) async {
    File? croppedFile = await ImageCropper().cropImage(
        sourcePath: image,
        aspectRatioPresets: [
          // CropAspectRatioPreset.square,
          // CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          // CropAspectRatioPreset.ratio4x3,
          // CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'E-Learning',
            toolbarColor: primary,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          minimumAspectRatio: 1.0,
        ));
    if (image != null) {
      setState(() {
        _finalImage = croppedFile;
      });
    } else {
      showToast('Image Not Cropped');
    }
  }

  _createPost() async {
    var user = Provider.of<UserProvider>(context , listen: false);
    if (desController.text.isNotEmpty && _finalImage!.path.isNotEmpty) {
      var userId = "${user.userId}";
      var title = "${desController.text}";
      var image = "${_finalImage!.path}";
      GetAddModel? model = await addQueAns(userId, title, image);
      if (model!.status == true) {
        Navigator.pop(context, true);
        showToast("${model.message}");
      } else {
        showToast("${model.message}");
      }
    } else {
      showToast("Please Select Image and Fill Description");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Add Questions"),
      ),
      bottomSheet: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(primary)),
              onPressed: () {
                _createPost();
              },
              child: Text("Add Question"),
            ),
          ))
        ],
      ),
      body: ListView(
        children: [
          _finalImage == null
              ? Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          getImage();
                        },
                        icon: Icon(Icons.camera_alt)),
                    Text("Add Question Image")
                  ],
                )
              : Image.file(File(_finalImage!.path)),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: desController,
              maxLines: 15,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Notes : Question And Answer will be reviewed , if any type #*@! Image and answer, your account will be block",
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}

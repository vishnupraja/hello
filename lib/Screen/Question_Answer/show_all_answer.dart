import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Model/GetAllCommentModel.dart';
import 'package:e_learning/Model/GetCommentModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowAllAnswer extends StatefulWidget {
  final image;
  final des;
  final id;

  const ShowAllAnswer({Key? key, this.image, this.des, this.id})
      : super(key: key);

  @override
  State<ShowAllAnswer> createState() => _ShowAllAnswerState();
}

class _ShowAllAnswerState extends State<ShowAllAnswer> {
  bool show = false;

  var desController = TextEditingController();

  _createComment() async {
    var user = Provider.of<UserProvider>(context , listen: false);
    var postId = "${widget.id}";
    var comment = "${desController.text}";
    var title = "";
    var userId = "${user.userId}";
    GetCommentModel? model =
        await createComment(postId, comment, title, userId);
    if(model!.status == true){
      showToast("${model.message}");
      show = false;
      desController.clear();
      setState(() {

      });
    }else{
      showToast("${model.message}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Answers",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Image.network('${widget.image}'),
          Text("${widget.des}"),
          Divider(),
          show
              ? Container()
              : TextButton(
                  onPressed: () {
                    setState(() {
                      show = true;
                    });
                  },
                  child: Text("Post your Answer")),
          show
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: desController,
                    maxLines: 5,
                    decoration: InputDecoration(
                        suffix: TextButton(
                            child: Text("Answer"),
                            onPressed: () {
                              _createComment();
                            }),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )
              : Container(),
          ListTile(
            title: Text(
              "Comments",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          FutureBuilder(
              future: getAllComment(widget.id),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return  snapshot.data.status == true?
                    ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: snapshot.data.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      GetAllCommentModel data = snapshot.data;
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: primary,
                              radius: 15,
                              child: Text(data.data![index].username![0].toUpperCase()),
                            ),
                            title: Text("${data.data![index].username}"),
                            subtitle: Text("${data.data![index].comment}"),
                          ),
                          Divider()
                        ],
                      );
                    },
                  ):Container(child: Center(child: Text("No Answers")),);
                } else if (snapshot.hasError) {
                  return Icon(Icons.error_outline);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
        ],
      ),
    );
  }
}

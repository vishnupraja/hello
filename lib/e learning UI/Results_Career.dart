import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Results_Career extends StatefulWidget {
  const Results_Career({Key? key}) : super(key: key);

  @override
  State<Results_Career> createState() => _Results_CareerState();
}

class _Results_CareerState extends State<Results_Career> {
  String? _fileName;
  List<PlatformFile>? _paths;
  String? _directoryPath;
  String? _extension;
  bool _loadingPath = false;

  @override
  void _openFileExplorer() async {
    setState(() => _loadingPath = true);
    try {
      _directoryPath = null;
      _paths = (await FilePicker.platform.pickFiles(
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print(ex);
    }
    if (!mounted) return;
    setState(() {
      _loadingPath = false;
      print(_paths!.first.extension);
      _fileName =
          _paths != null ? _paths!.map((e) => e.name).toString() : '...';
    });
  }

  String? yesno;

  final List<String> Semester = [
    'Diploma',
    'Bachelor (BE)',
    'Bachelor (B.Tech)',
    'Master (ME)',
    'Master (M.Tech)',
  ];
  final List<String> ResultSubWise = [
    'Civil',
    'Mechanical',
    'Electrical',
  ];

  String? selectedValue1;
  String? selectedValue2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9D3B9),
      appBar: AppBar(
        title: Text('Create Account'),
        backgroundColor: Color(0xff3B76BC),
        centerTitle: true,
        leading: Container(
          height: 35,
          width: 35,
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(13),
        children: [
          Text(
            'Results/Career',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButtonHideUnderline(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 13),
              child: DropdownButton2(
                isExpanded: true,
                hint: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/course.png'),
                      height: 22,
                      width: 22,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: selectedValue1 == null
                          ? Text(
                              'Semester',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                              overflow: TextOverflow.ellipsis,
                            )
                          : Text(
                              '$selectedValue1',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                    ),
                  ],
                ),
                items: Semester.map(
                  (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ).toList(),
                // value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue1 = value as String?;
                  });
                  print(selectedValue1);
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xff3B76BC),
                  size: 35,
                ),
                iconSize: 14,
                iconEnabledColor: Colors.yellow,
                iconDisabledColor: Colors.grey,
                buttonHeight: 50,
                buttonWidth: 160,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color(0xff202020),
                  ),
                  color: Color(0xffF9D3B9),
                ),
                itemHeight: 40,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 200,
                dropdownWidth: MediaQuery.of(context).size.width,
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffF9D3B9),
                ),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: const Offset(-20, 0),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButtonHideUnderline(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 13),
              child: DropdownButton2(
                isExpanded: true,
                hint: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/institute.png'),
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: selectedValue2 == null
                          ? Text(
                              'Result (Subject wise)',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                              overflow: TextOverflow.ellipsis,
                            )
                          : Text(
                              '$selectedValue2',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                    ),
                  ],
                ),
                items: ResultSubWise.map(
                  (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ).toList(),
                // value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue2 = value as String?;
                  });
                  print(selectedValue2);
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xff3B76BC),
                  size: 35,
                ),
                iconSize: 14,
                iconEnabledColor: Colors.yellow,
                iconDisabledColor: Colors.grey,
                buttonHeight: 50,
                buttonWidth: 160,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color(0xff202020),
                  ),
                  color: Color(0xffF9D3B9),
                ),
                itemHeight: 40,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 200,
                dropdownWidth: MediaQuery.of(context).size.width,
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffF9D3B9),
                ),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: const Offset(-20, 0),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Image(image: AssetImage('assets/images/attach.png'),height: 27,width: 20,),
                        ),
                        Text('Attach Fee Receipt'),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffF9D3B9),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    width: 310,
                    height: 50,
                  ),
                  onTap: () {
                    _openFileExplorer();
                  },
                )

                // ElevatedButton(
                //   onPressed: () => _selectFolder(),
                //   child: const Text("Pick folder"),
                // ),
                // ElevatedButton(
                //   onPressed: () => _clearCachedFiles(),
                //   child: const Text("Clear temporary files"),
                // ),
              ],
            ),
          ),
          Builder(
            builder: (BuildContext context) => _loadingPath
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    // child: Icon(Icons.drag_indicator),
                  )
                : _directoryPath != null
                    ? ListTile(
                        title: const Text('Directory path'),
                        subtitle: Text(_directoryPath!),
                      )
                    : _paths != null
                        ? Container(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            height: MediaQuery.of(context).size.height * 0.13,
                            child: Scrollbar(
                                child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: _paths != null && _paths!.isNotEmpty
                                  ? _paths!.length
                                  : 1,
                              itemBuilder: (BuildContext context, int index) {
                                final bool isMultiPath =
                                    _paths != null && _paths!.isNotEmpty;
                                final String name = 'File $index: ' +
                                    (isMultiPath
                                        ? _paths!
                                            .map((e) => e.name)
                                            .toList()[index]
                                        : _fileName ?? '...');
                                final path =
                                    _paths!.map((e) => e.path).toList()[index];

                                return ListTile(
                                  title: Text(
                                    name,
                                  ),
                                  subtitle: Text(path!),
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const Divider(),
                            )),
                          )
                        : const SizedBox(
                            height: 1,
                          ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13,),
            child: Row(
              children: [
                Text(
                  '2 nd Sem Marksheet.jpg',
                  style: TextStyle(fontSize: 12),
                ),
                Icon(
                  Icons.highlight_remove,
                  color: Color(0xff1559B3),
                  size: 14,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            // height: 200,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Are You want to Apply For job\n Through Exam Runner up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Radio(
                        value: "Yes",
                        groupValue: yesno,
                        onChanged: (value) {
                          setState(() {
                            yesno = value.toString();
                          });
                        }),
                    Text("Yes"),
                    Radio(
                        value: "No",
                        groupValue: yesno,
                        onChanged: (value) {
                          setState(() {
                            yesno = value.toString();
                          });
                        }),
                    Text("No")
                  ])
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.location_on,
                      color: Color(0xff3B76BC),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Preferred Location',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              height: 55,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff202020),
                  ),
                  color: Color(0xffF9D3B9),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        "assets/images/preferred.png",
                        width: 20,
                        height: 20,
                      )),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Preferred Field',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              height: 55,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff202020),
                  ),
                  color: Color(0xffF9D3B9),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Container(
              child: Center(
                child: Text(
                  'Skip For Future',
                  style: TextStyle(color: Color(0xffA71D1E), fontSize: 18),
                ),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffA71D1E),
                  ),
                  color: Color(0xffF9D3B9),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 65,
              child: ElevatedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Color(0xff0BA84A),

                  //  fixedSize: Size(250, 45)
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

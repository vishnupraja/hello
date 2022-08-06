import 'package:e_learning/e%20learning%20UI/QualificationDetails.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController middlenameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController mobailnoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController aadharnoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9D3B9),
      appBar: AppBar(
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
        title: const Text(
          "Create Account",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal Details',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff9B0619),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Enter your Name*',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: const Icon(
                        Icons.person,
                        color: Color(0xff3B76BC),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black38,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'middle Name*';
                    }
                    return null;
                  },
                  controller: middlenameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Middle Name',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: const Icon(
                        Icons.person,
                        color: Color(0xff3B76BC),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black38,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                  controller: lastnameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Last Name/ Surname',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: const Icon(
                        Icons.person,
                        color: Color(0xff3B76BC),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black38,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextFormField(
                  maxLength: 10,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required Mobail no.';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  controller: mobailnoController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Mobile No.*',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: const Icon(
                        Icons.call,
                        color: Color(0xff3B76BC),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black38,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextFormField(
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return 'Please enter name';
                  //   }
                  //   return null;
                  // },
                  obscureText: !_isObscure,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Passowrd',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: const Icon(
                          Icons.lock,
                          color: Color(0xff3B76BC),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black38,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }))),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextFormField(
                  maxLength: 12,
                  controller: aadharnoController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Aadhar No.',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 12, left: 3),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Image(
                          image: AssetImage('assets/images/binni.png'),
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black38,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Address';
                    }
                    return null;
                  },
                  controller: addressController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: 'Address*',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: const Icon(
                        Icons.location_on,
                        color: Color(0xff3B76BC),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black38,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Color(0xff0BA84A),
                        fixedSize: Size(290, 45)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Process data");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QualificationDetails()));
                      } else {
                        print('Error');
                      }

                      print("fristName=========${firstnameController.text}");
                      print("MiddleName=========${middlenameController.text}");
                      print("LastName=========${lastnameController.text}");
                      print("MobailNo=========${mobailnoController.text}");
                      print("Password=========${passwordController.text}");
                      print("AadharNo.=========${aadharnoController.text}");
                      print("Address=========${addressController.text}");
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

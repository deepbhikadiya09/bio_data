import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BioData extends StatefulWidget {
  const BioData({Key? key}) : super(key: key);

  @override
  _BioDataState createState() => _BioDataState();
}

class _BioDataState extends State<BioData> {





  File? imageFile;
  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
  TextEditingController name = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController contactnumber = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController education = TextEditingController();
  TextEditingController fathername = TextEditingController();
  TextEditingController mothername = TextEditingController();
  TextEditingController nativeplace = TextEditingController();
  TextEditingController unclename = TextEditingController();
  TextEditingController maternalplace = TextEditingController();
  TextEditingController hobbies = TextEditingController();
  List l1=[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: Text("BioData Creator"),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 150,
                    width: 150,
                    child: imageFile != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.file(
                              imageFile!,
                              fit: BoxFit.cover,
                            ),
                          )
                        : SizedBox(
                            child: Icon(
                              Icons.account_circle,
                              size: 150,
                            ),
                          ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {
                      showCupertinoDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: Column(
                                children: <Widget>[
                                  Text("Select"),
                                ],
                              ),
                              actions: [
                                CupertinoDialogAction(
                                  child: Text("Camera"),
                                  onPressed: () {
                                    _getFromCamera();
                                    Navigator.pop(context);
                                  },
                                ),
                                CupertinoDialogAction(
                                  child: Text("Gallery"),
                                  onPressed: () {
                                    _getFromGallery();
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Text(
                      "Choose Image",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: name,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    controller: dob,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Date Of Birth',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    controller: height,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Height',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: weight,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Weight',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: contactnumber,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Contact Number',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: address,
                    maxLines: 5,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Address',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: education,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Education',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: hobbies,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Hobbies',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: fathername,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Father Name',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: mothername,
                    textInputAction: TextInputAction.next,

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Mother Name',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: nativeplace,
                    textInputAction: TextInputAction.next,

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Native Place',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: unclename,
                    textInputAction: TextInputAction.next,

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Uncle Name',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: maternalplace,
                    textInputAction: TextInputAction.done,

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Maternal Place',
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Background color
                        ),
                        onPressed: () {
                          setState(() {
                            l1.addAll([imageFile!.path,name.text,dob.text,nativeplace.text,height.text,weight.text,hobbies.text,contactnumber.text,address.text,education.text,fathername.text,mothername.text,unclename.text,maternalplace.text]);
                          });
                          Navigator.pushNamed(context, '/FinalData',arguments: l1);
                          print(l1);
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 20),
                        ),
                    ),
                  ),
                  SizedBox(height: 300,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

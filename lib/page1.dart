import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume/modal.dart';
import 'package:resume/page2.dart';
import 'package:resume/page3.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtlastname = TextEditingController();
  TextEditingController txtadd = TextEditingController();
  TextEditingController txtphone = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtbday = TextEditingController();
  TextEditingController txtskills = TextEditingController();
  TextEditingController txtcityname = TextEditingController();
  TextEditingController txtintrest = TextEditingController();
  TextEditingController txtxfile = TextEditingController();
  TextEditingController txtabout = TextEditingController();
  TextEditingController txteduction = TextEditingController();
  TextEditingController txtcareer = TextEditingController();

  String? name,
      lastname,
      add,
      phone,
      email,
      bday,
      skills,
      cityname,
      intrest,
      xfile,
      about,
      eduction,
      career;
  bool path=false;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Himani",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          " As a Developer",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/image/01.jpg",
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "First Name",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.drive_file_rename_outline,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtname,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return name;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Last name",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.drive_file_rename_outline_outlined
                  ),

                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtlastname,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return lastname;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Address",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.location_on,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtadd,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return add;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Phone Number",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.phone,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtphone,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return phone;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Optional Section",
                      style: TextStyle(color: Colors.black38, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Email",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.email_outlined,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtemail,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return email;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Birth Date",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.date_range_outlined,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtbday,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return bday;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Skills",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.key_sharp,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtskills,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return skills;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "City Name",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.location_city_outlined,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtcityname,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return cityname;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Intrest",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.interests,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtintrest,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return intrest;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Add Photo",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.photo_outlined,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    ElevatedButton(onPressed: () async {
                      ImagePicker imagepicker=ImagePicker();
                      XFile? xfile=await imagepicker.pickImage(source: ImageSource.gallery);
                    }, child: Text("Select Photo"))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "View & Download ",
                      style: TextStyle(color: Colors.black38, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "About as",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.view_carousel_outlined,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtabout,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return about;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Eduction",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.history_edu,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txteduction,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return eduction;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Career",
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.cabin_outlined,
                    size: 30,
                  ),
                  childrenPadding: EdgeInsets.all(10),
                  collapsedIconColor: Colors.blue.shade900,
                  collapsedBackgroundColor: Colors.blue.shade50,
                  collapsedTextColor: Colors.black,
                  iconColor: Colors.blue.shade900,
                  maintainState: true,
                  children: [
                    TextFormField(
                      controller: txtcareer,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pelese enter the data";
                        }
                        return career;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: ElevatedButton(
                  onPressed: () {
                    name = txtname.text;
                    lastname = txtlastname.text;
                    add = txtadd.text;
                    phone = txtphone.text;
                    email = txtemail.text;
                    bday = txtbday.text;
                    skills = txtskills.text;
                    cityname = txtcityname.text;
                    intrest = txtintrest.text;
                    xfile =txtxfile.text;
                    about = txtabout.text;
                    eduction = txteduction.text;
                    career = txtcareer.text;

                    Modal m1 = Modal(
                      name: name,
                      lastname: lastname,
                      add: add,
                      phone: phone,
                      email: email,
                      bday: bday,
                      skills: skills,
                      cityname: cityname,
                      intrest: intrest,
                      xfile: xfile,
                      about: about,
                      eduction: eduction,
                      career: career,

                    );
                    setState(() {
                      Navigator.pushNamed(context, '2', arguments: m1);
                    });
                    if (formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Succesful "),
                        backgroundColor: Colors.blue.shade900,
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ));
                      formkey.currentState!.reset();
                      formkey.currentState!.save();
                    }
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ]),
        ),
      )),
    );
  }
}

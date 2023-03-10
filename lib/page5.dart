import 'package:flutter/material.dart';
import 'package:resume/modal.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    Modal data3 = ModalRoute.of(context)!.settings.arguments as Modal;

    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 770,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,

                              ),
                              child: Icon(Icons.arrow_back_ios,size: 20,),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "${data3.name} ${data3.lastname}",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                            width: 290,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Phone :${data3.phone}",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Email :${data3.email}",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Address :${data3.add}",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 5, right: 2),
                            child: Column(
                              children: [
                                Text(
                                  "ABOUT AS :",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "${data3.about}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 160,
                                ),
                                Text(
                                  "EDUCTION :",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 10,),
                                Text("${data3.eduction}",style: TextStyle(color: Colors.grey,fontSize: 15),)

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 10, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(color: Colors.black12),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 5),
                      child: Column(
                        children: [
                          Text(
                            "  INTREST :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "${data3.intrest}",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 230,),
                          Text(
                            "SKILLS :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "${data3.skills}",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:resume/modal.dart';

class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    Modal data4 = ModalRoute.of(context)!.settings.arguments as Modal;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Row(
            children: [
              Column(children: [
                Container(
                  height: 770,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.shade100,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
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
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),

                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 2),
                          child: Column(
                            children: [
                              Text(
                                "CONTACT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 3,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "PHONE:- ${data4.phone}",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "EMAIL:- ${data4.email}",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "ADDRESS:- ${data4.add}",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "CAREER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 3,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${data4.career}",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              SizedBox(
                                height: 65,
                              ),
                              Text(
                                "EDUCTION",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 3,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${data4.eduction}",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${data4.name} ",
                            style: TextStyle(
                                color: Colors.blue.shade500,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "${data4.lastname} ",
                            style: TextStyle(
                                color: Colors.blue.shade500,
                                fontSize: 25,
                                fontWeight: FontWeight.w400))
                              ]
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 2,
                            width: 186,
                            decoration:
                            BoxDecoration(color: Colors.blue.shade200),
                          ),
                          Text(
                            "  Flutter Developer",
                            style: TextStyle(color: Colors.blueGrey, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Column(
                        children: [
                          Text(
                            "INTREST :-",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${data4.intrest}",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          SizedBox(
                            height: 220,
                          ),


                          Text(
                            "ABOUT AS:-",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          Text(
                            "${data4.about}",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 190,),
                    Row(
                      children: [
                        SizedBox(width: 50,),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          child: ElevatedButton(onPressed: () {


                          }, child: Text("SAVE")),
                        ),
                      ],
                    )
                  ],
                ),
              )

            ],
          ),

        ],
      )),
    );
  }
}

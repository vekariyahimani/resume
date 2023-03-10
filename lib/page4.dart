import 'package:flutter/material.dart';
import 'package:resume/modal.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page5State();
}

class _Page5State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    Modal data2 = ModalRoute.of(context)!.settings.arguments as Modal;

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
                    width: 150,
                    decoration: BoxDecoration(color: Colors.brown.shade800),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 5, right: 10),
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
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 220,
                            width: 150,
                            decoration: BoxDecoration(color: Colors.black12),
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
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "PHONE: ${data2.phone}",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "EMAIL: ${data2.email}",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "ADDRESS: ${data2.add}",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "MY SKILLS",
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
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${data2.skills}",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  "Project Management",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    value: 0.60,
                                    color: Colors.white,
                                    backgroundColor: Colors.brown,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Programing Solving",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    value: 0.40,
                                    color: Colors.white,
                                    backgroundColor: Colors.brown,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Creativity",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    value: 0.95,
                                    color: Colors.white,
                                    backgroundColor: Colors.brown,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Project Management",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    value: 0.90,
                                    color: Colors.white,
                                    backgroundColor: Colors.brown,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                            "${data2.name} ",
                            style: TextStyle(
                                color: Colors.brown.shade800,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${data2.lastname} ",
                            style: TextStyle(
                                color: Colors.brown.shade800,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Flutter Developer",
                            style:
                                TextStyle(color: Colors.grey, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 210,
                            decoration:
                                BoxDecoration(color: Colors.brown.shade400),
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 5, 10),
                                child: Text(
                                  "About As :-",
                                  style: TextStyle(
                                      color: Colors.brown.shade200,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                          Text(
                            "${data2.about}",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Column(
                        children: [
                          Text(
                            "INTREST :-",
                            style: TextStyle(
                                color: Colors.brown.shade500,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${data2.intrest}",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            "CAREER :-",
                            style: TextStyle(
                                color: Colors.brown.shade500,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${data2.career}",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            "EDUCTION:-",
                            style: TextStyle(
                                color: Colors.brown.shade500,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          Text(
                            "${data2.eduction}",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
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

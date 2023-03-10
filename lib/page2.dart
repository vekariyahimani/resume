import 'package:flutter/material.dart';
import 'package:resume/modal.dart';
import 'package:resume/page3.dart';
import 'package:resume/page4.dart';
import 'package:resume/page5.dart';
import 'package:resume/page6.dart';

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  Widget build(BuildContext context) {
    Modal data=ModalRoute.of(context)!.settings.arguments as Modal;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Theems.."),
        leading: Icon(Icons.fiber_new_rounded),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ],
            ),
          ),
        ],
        backgroundColor: Colors.blue.shade800,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade800, shape: BoxShape.circle),
                          child: Icon(
                            Icons.arrow_back_ios,size: 15,
                          )),
                    ],
                  ),
                )),
          
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    height: 200,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                    ),
                    child: InkWell(onTap:() {
                      setState(() {
                        Navigator.pushNamed(context, '3',arguments: data);
                      });
                    },child: Image.asset("assets/image/001.jpg",fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 32,),
                  Container(
                    height: 200,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        border: Border.all(color: Colors.blue)
                    ),
                    child: InkWell(onTap:() {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Page4(),));
                        Navigator.pushNamed(context, '4',arguments: data);
                      });
                    },child: Image.asset("assets/image/2.jpg",fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    height: 200,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        border: Border.all(color: Colors.blue)
                    ),
                    child: InkWell(onTap:() {
                      setState(() {
                        Navigator.pushNamed(context, '5',arguments: data);
                      });
                    },child: Image.asset("assets/image/003.jpg",fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 32,),
                  Container(
                    height: 200,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        border: Border.all(color: Colors.blue)
                    ),
                    child: InkWell(onTap:() {
                      setState(() {
                      });
                    },child: InkWell(onTap:() {
                      setState(() {
                        Navigator.pushNamed(context, '6',arguments: data);

                      });
                    },child: Image.asset("assets/image/_6.jpg",fit: BoxFit.cover))),
                  )
                ],
              ),
            ),
            Text("${data.name}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.lastname}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.add}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.phone}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.email}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.bday}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.skills}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.cityname}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.intrest}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.xfile}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.about}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.eduction}",style: TextStyle(color: Colors.blue.shade50)),
            Text("${data.career}",style: TextStyle(color: Colors.blue.shade50)),

                ],
              ),
            )


        ),
      );
  }
}

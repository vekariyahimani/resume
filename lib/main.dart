
import 'package:flutter/material.dart';

import 'package:resume/page1.dart';
import 'package:resume/page2.dart';
import 'package:resume/page4.dart';
import 'package:resume/page5.dart';
import 'package:resume/page6.dart';

import 'modal.dart';
import 'page3.dart';

void main()
{

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Page1(),
        '2':(context) => Page2(),
        '3':(context) => Page3(),
        '4':(context)=> Page4(),
        '5':(context) => Page5(),
        '6':(context) => Page6(),


      },
    )
  );
}
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/modal.dart';

Future <void> resume(Modal data4) async {
  var pdf = pw.Document();
  var img;

  if (data4.xfile!.isNotEmpty) {
    img = pw.MemoryImage(
      File('${data4.xfile}').readAsBytesSync(),
    );
  }

  var img1 = pw.MemoryImage(
      (await rootBundle.load('assets/image/girl.jpg')).buffer.asUint8List());
  pdf.addPage(pw.Page(margin: pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (context) => pw.Stack(
        children: [
          pw.Row(
            children: [
              pw.Column(children: [
                pw.Container(
                  height: 770,
                  width: 170,
                  decoration: pw.BoxDecoration(
                    color: PdfColors.white,
                  ),
                  child: pw.Padding(
                    padding:pw. EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: pw.Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        pw.Container(
                          height: 200,
                          width: 200,
                          decoration:pw. BoxDecoration(
                              color: PdfColors.white,
                              shape: BoxShape.circle,
                              image: pw.DecorationImage(
                                image: img1,
                              ),
                              border: pw.Border.all(color:PdfColors.white,
                              )),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(top: 15, right: 2),
                          child: pw.Column(
                            children: [
                              pw.Text(
                                "CONTACT",
                                style: pw.TextStyle(
                                    color:PdfColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              pw.SizedBox(
                                height: 5,
                              ),
                              pw.Container(
                                height: 3,
                                width: 50,
                                decoration: pw.BoxDecoration(color:PdfColors.white),
                              ),
                              pw.SizedBox(
                                height: 20,
                              ),
                              pw.Text(
                                "PHONE:- ${data4.phone}",
                                style: pw.TextStyle(color:PdfColors.white),
                              ),
                              pw.SizedBox(
                                height: 20,
                              ),
                              pw.Text(
                                "EMAIL:- ${data4.email}",
                                style: pw.TextStyle(color: PdfColors.white),
                              ),
                              pw.SizedBox(
                                height: 20,
                              ),
                              pw.Text(
                                "ADDRESS:- ${data4.add}",
                                style: pw.TextStyle(color:PdfColors.white),
                              ),
                              pw.SizedBox(
                                height: 30,
                              ),
                              pw.Text(
                                "CAREER",
                                style: pw.TextStyle(
                                    color:PdfColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              pw.SizedBox(
                                height: 5,
                              ),
                              pw.Container(
                                height: 3,
                                width: 50,
                                decoration: pw.BoxDecoration(color:PdfColors.white),
                              ),
                              pw.SizedBox(
                                height: 10,
                              ),
                              pw.Text(
                                "${data4.career}",
                                style:
                                pw.TextStyle(color:PdfColors.white, fontSize: 15),
                              ),
                              pw.SizedBox(
                                height: 65,
                              ),
                              pw.Text(
                                "EDUCTION",
                                style: pw.TextStyle(
                                    color: PdfColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              pw.SizedBox(
                                height: 5,
                              ),
                              pw.Container(
                                height: 3,
                                width: 50,
                                decoration: pw.BoxDecoration(color:PdfColors.white),
                              ),
                              pw.SizedBox(
                                height: 10,
                              ),
                              pw.Text(
                                "${data4.eduction}",
                                style:
                                pw.TextStyle(color:PdfColors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 20),
                child: pw.Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(top: 20, left: 10),
                      child: pw.Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              "${data4.name} ",
                              style: pw.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            pw.Text(
                                "${data4.lastname} ",
                                style: pw.TextStyle(
                                    color:PdfColors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))
                          ]
                      ),
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(top: 2),
                      child: pw.Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          pw.Container(
                            height: 2,
                            width: 186,
                            decoration:
                            pw.BoxDecoration(color:PdfColors.white),
                          ),
                          pw.Text(
                            "  Flutter Developer",
                            style: pw.TextStyle(color:PdfColors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      height: 50,
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(top: 20, left: 10),
                      child: pw.Column(
                        children: [
                          pw.Text(
                            "INTREST :-",
                            style: pw.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          pw.Text(
                            "${data4.intrest}",
                            style: pw.TextStyle(color:PdfColors.white, fontSize: 15),
                          ),
                          pw.SizedBox(
                            height: 220,
                          ),


                          pw.Text(
                            "ABOUT AS:-",
                            style: pw.TextStyle(
                                color: PdfColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          pw.Text(
                            "${data4.about}",
                            style: pw.TextStyle(color:PdfColors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 190,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 50,),
                        pw.Container(
                          height: 50,
                          width: 100,
                          decoration: pw.BoxDecoration(
                              color:PdfColors.white,
                              borderRadius: pw.BorderRadius.all(Radius.circular(50))
                          ),
                         ),

                      ],
                    )
                  ],
                ),
              )

            ],
          ),

        ],
      )));
}
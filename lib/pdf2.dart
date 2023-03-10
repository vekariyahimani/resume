import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/modal.dart';

Future <void> resume(Modal data3) async {
  var pdf = pw.Document();
  var img;

  if (data3.xfile!.isNotEmpty) {
    img = pw.MemoryImage(
      File('${data3.xfile}').readAsBytesSync(),
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
              pw.Column(
                children: [
                  pw.Container(
                    height: 770,
                    width: 200,
                    decoration: pw.BoxDecoration(color:PdfColors.white),
                    child: pw.Padding(
                      padding:
                      const pw.EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: pw.Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          pw.SizedBox(height: 20,),
                          pw.Text(
                            "${data3.name} ${data3.lastname}",
                            style: pw.TextStyle(
                                color: PdfColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          pw.SizedBox(
                            height: 10,
                          ),
                          pw.Container(
                            height: 10,
                            width: 290,
                            decoration: pw.BoxDecoration(color:PdfColors.white),
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Text(
                            "Phone :${data3.phone}",
                            style: pw.TextStyle(fontSize: 18, color: PdfColors.white),
                          ),
                          pw. SizedBox(
                            height: 16,
                          ),
                          pw.Text(
                            "Email :${data3.email}",
                            style: pw.TextStyle(fontSize: 18, color:PdfColors.white),
                          ),
                          pw.SizedBox(
                            height: 16,
                          ),
                          pw.Text(
                            "Address :${data3.add}",
                            style: pw.TextStyle(fontSize: 18, color:PdfColors.white),
                          ),
                          pw.SizedBox(
                            height: 40,
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.only(
                                top: 15, left: 5, right: 2),
                            child: pw.Column(
                              children: [
                                pw.Text(
                                  "ABOUT AS :",
                                  style: pw.TextStyle(
                                      color: PdfColors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                pw.Text(
                                  "${data3.about}",
                                  style: pw.TextStyle(
                                      color: PdfColors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                pw.SizedBox(
                                  height: 160,
                                ),
                                pw.Text(
                                  "EDUCTION :",
                                  style: pw.TextStyle(
                                      color: PdfColors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                pw.SizedBox(height: 10,),
                                pw.Text("${data3.eduction}",style: TextStyle(color: PdfColors.white,fontSize: 15),)

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              pw.Padding(
                padding: const pw. EdgeInsets.only(top: 20, right: 10, left: 15),
                child: pw.Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pw.Container(
                      height: 120,
                      width: 110,
                      decoration: pw.BoxDecoration(color:PdfColors.white,
                      image: pw.DecorationImage(
                        image: img1,
                      )),
                    ),
                    pw.Padding(
                      padding:
                      const pw.EdgeInsets.only(top: 20, right: 5),
                      child: pw.Column(
                        children: [
                          pw.Text(
                            "  INTREST :",
                            style: pw.TextStyle(
                                color: PdfColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          pw.SizedBox(height: 10,),
                          pw.Text(
                            "${data3.intrest}",
                            style: pw.TextStyle(
                              color: PdfColors.white,
                              fontSize: 15,
                            ),
                          ),
                          pw.SizedBox(height: 230,),
                          pw.Text(
                            "SKILLS :",
                            style: pw.TextStyle(
                                color: PdfColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          pw.SizedBox(height: 10,),
                          pw.Text(
                            "${data3.skills}",
                            style: TextStyle(
                              color:PdfColors.white,
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
  Directory? directory = await getExternalStorageDirectory();
  var file = File("${directory!.path}/myresume.pdf");
  await file.writeAsBytes(await pdf.save());
  print("======================${directory.path}=======================");
}
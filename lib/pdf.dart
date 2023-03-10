import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/modal.dart';

Future<void> resume1(Modal data1) async {
  var pdf = pw.Document();
  var img;

  if (data1.xfile!.isNotEmpty) {
    img = pw.MemoryImage(
      File('${data1.xfile}').readAsBytesSync(),
    );
  }

  var img1 = pw.MemoryImage(
      (await rootBundle.load('assets/image/girl.jpg')).buffer.asUint8List());
  pdf.addPage(pw.Page(
    margin: pw.EdgeInsets.all(10),
    orientation: pw.PageOrientation.portrait,
    pageFormat: PdfPageFormat.a4,
    build: (context) => pw.Row(
      children: [
        pw.Column(
          children: [
            pw.Container(
              height: 770,
              width: 150,
              decoration: pw.BoxDecoration(color: PdfColors.white),
              child: pw.Column(
                children: [
                  pw.SizedBox(
                    height: 50,
                  ),
                  (data1.xfile!.isEmpty)?pw.Center(
                    child: pw.Container(
                    height: 100,
                    width: 100,
                      decoration: pw.BoxDecoration(
                        color: PdfColors.white,
                        image: pw.DecorationImage(
                          image: img1,
                        ),

                      )
                  ),
                  ):
                  pw.SizedBox(
                    height: 20,
                  ),
                  pw.Text(
                    "${data1.name}  ",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  pw.Text(
                    "${data1.lastname}  ",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  pw.SizedBox(
                    height: 20,
                  ),
                  pw.Text(
                    "Address :",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "${data1.add}",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.Text(
                    "Phone No:",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "${data1.phone}",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.Text(
                    "Email :",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "${data1.email}",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.Text(
                    "Birth Date :",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "${data1.bday}",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.Text(
                    "City Name :",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.SizedBox(
                    height: 20,
                  ),
                  pw.Text(
                    "${data1.cityname}",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.Text(
                    "ABOUT AS:  ",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.Text(
                    "${data1.about}",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.SizedBox(
                    height: 40,
                  ),
                  pw.Text(
                    " EDUCACTION:  ",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  pw.Text(
                    "${data1.eduction}",
                    style: pw.TextStyle(
                        color: PdfColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
        pw.Column(
          children: [
            pw.SizedBox(
              height: 50,
            ),
            pw.Text(
              "Skills",
              style: pw.TextStyle(
                  color: PdfColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            pw.Text(
              "-${data1.skills}",
              style: pw.TextStyle(
                  color: PdfColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            pw.SizedBox(
              height: 130,
            ),
            pw.Text(
              " Intrest:  ",
              style: pw.TextStyle(
                  color: PdfColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            pw.Text(
              "${data1.intrest}",
              style: pw.TextStyle(
                  color: PdfColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            pw.SizedBox(height: 130),
            pw.Text(
              " Career:  ",
              style: pw.TextStyle(
                  color: PdfColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            pw.Text(
              "${data1.career}",
              style: pw.TextStyle(
                  color: PdfColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    ),
  ));

  Directory? directory = await getExternalStorageDirectory();
  var file = File("${directory!.path}/myresume.pdf");
  await file.writeAsBytes(await pdf.save());
  print("======================${directory.path}=======================");
}

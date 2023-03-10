import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/modal.dart';

Future<void> resume2(Modal data2) async {
  var pdf = pw.Document();
  var img;

  if (data2.xfile!.isNotEmpty) {
    img = pw.MemoryImage(
      File('${data2.xfile}').readAsBytesSync(),
    );
  }

  var img1 = pw.MemoryImage(
      (await rootBundle.load('assets/image/girl.jpg')).buffer.asUint8List());
  pdf.addPage(pw.Page(
    margin: pw.EdgeInsets.all(10),
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
                  width: 150,
                  decoration: pw.BoxDecoration(color: PdfColors.white),
                  child: pw.Padding(
                    padding:
                        const pw.EdgeInsets.only(top: 10, left: 5, right: 10),
                    child: pw.Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          pw.SizedBox(
                            height: 5,
                          ),
                          pw.Container(
                            height: 220,
                            width: 150,
                            decoration:
                                pw.BoxDecoration(color: PdfColors.white,
                                image: pw.DecorationImage(
                                  image: img1,
                                )),
                          ),
                          pw.Padding(
                            padding:
                                const pw.EdgeInsets.only(top: 15, right: 2),
                            child: pw.Column(
                              children: [
                                pw.Text(
                                  "CONTACT",
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
                                  decoration:
                                      pw.BoxDecoration(color: PdfColors.white),
                                ),
                                pw.SizedBox(
                                  height: 20,
                                ),
                                pw.Text(
                                  "PHONE: ${data2.phone}",
                                  style: TextStyle(color: PdfColors.white),
                                ),
                                pw.SizedBox(
                                  height: 20,
                                ),
                                pw.Text(
                                  "EMAIL: ${data2.email}",
                                  style: pw.TextStyle(color: PdfColors.white),
                                ),
                                pw.SizedBox(
                                  height: 20,
                                ),
                                pw.Text(
                                  "ADDRESS: ${data2.add}",
                                  style: pw.TextStyle(color: PdfColors.white),
                                ),
                                pw.SizedBox(
                                  height: 40,
                                ),
                                pw.Text(
                                  "MY SKILLS",
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
                                  decoration:
                                      pw.BoxDecoration(color: PdfColors.white),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.Text(
                                  "${data2.skills}",
                                  style: pw.TextStyle(
                                      color: PdfColors.white, fontSize: 15),
                                ),
                                pw.Text(
                                  "Project Management",
                                  style: pw.TextStyle(
                                      color: PdfColors.white, fontSize: 15),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.SizedBox(
                                  width: 120,
                                  child: pw.LinearProgressIndicator(
                                    value: 0.60,
                                    backgroundColor: PdfColors.white,
                                  ),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.Text(
                                  "Programing Solving",
                                  style: pw.TextStyle(
                                      color: PdfColors.white, fontSize: 15),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.SizedBox(
                                  width: 120,
                                  child: pw.LinearProgressIndicator(
                                    value: 0.40,
                                    backgroundColor: PdfColors.white,
                                  ),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.Text(
                                  "Creativity",
                                  style: pw.TextStyle(
                                      color: PdfColors.white, fontSize: 15),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.SizedBox(
                                  width: 120,
                                  child: pw.LinearProgressIndicator(
                                    value: 0.95,
                                    backgroundColor: PdfColors.white,
                                  ),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.Text(
                                  "Project Management",
                                  style: pw.TextStyle(
                                      color: PdfColors.white, fontSize: 15),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.SizedBox(
                                  width: 120,
                                  child: pw.LinearProgressIndicator(
                                    value: 0.90,
                                    backgroundColor: PdfColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
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
                          "${data2.name} ",
                          style: pw.TextStyle(
                              color: PdfColors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        pw.Text(
                          "${data2.lastname} ",
                          style: TextStyle(
                              color: PdfColors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.Text(
                          "Flutter Developer",
                          style: pw.TextStyle(
                              color: PdfColors.white, letterSpacing: 1),
                        ),
                        pw.SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Column(
                      children: [
                        pw.Container(
                          height: 100,
                          width: 210,
                          decoration: pw.BoxDecoration(color: PdfColors.white),
                          child: pw.Padding(
                              padding:
                                  const pw.EdgeInsets.fromLTRB(10, 10, 5, 10),
                              child: Text(
                                "About As :-",
                                style: pw.TextStyle(
                                    color: PdfColors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        pw.Text(
                          "${data2.about}",
                          style:
                              TextStyle(color: PdfColors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  pw.SizedBox(
                    height: 20,
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
                          "${data2.intrest}",
                          style: pw.TextStyle(
                              color: PdfColors.white, fontSize: 15),
                        ),
                        pw.SizedBox(
                          height: 100,
                        ),
                        pw.Text(
                          "CAREER :-",
                          style: pw.TextStyle(
                              color: PdfColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        pw.Text(
                          "${data2.career}",
                          style:
                              TextStyle(color: PdfColors.white, fontSize: 15),
                        ),
                        pw.SizedBox(
                          height: 100,
                        ),
                        pw.Text(
                          "EDUCTION:-",
                          style: pw.TextStyle(
                              color: PdfColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        pw.Text(
                          "${data2.eduction}",
                          style: pw.TextStyle(
                              color: PdfColors.white, fontSize: 15),
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

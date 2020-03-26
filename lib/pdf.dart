import 'package:flutter/material.dart';
import 'page1.dart';
import 'kalender.dart';
import 'page2.dart';
import 'page3.dart';
import 'dialogs.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
int page = 0;

class Pkb extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<Pkb> {

@override
  Widget build(BuildContext context) {

    final pdf = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child : FutureBuilder<PDFDocument>(
            future: PDFDocument.openAsset('assets/pkb.pdf'),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                final pageController = PageController(initialPage: page,);
                return PDFView(
                  document: snapshot.data,
                  scrollDirection: Axis.vertical,
                  controller: pageController,
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    'PDF Rendering does not '
                    'support on the system of this version',
                  ),
                );
              }

                return Center(child: CircularProgressIndicator());
  },
)
    );

return Scaffold(
    appBar: AppBar(
    title: const Text('PKB'),
    actions: <Widget>[
      IconButton(icon: const Icon(Icons.book), onPressed: () async {
        Dialogs.yesAbortDialog(context);
        }
      )
    ],
  ),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(children: <Widget>[
                Image.asset('assets/logo.png'),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Menu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ))
              ]),
        ),
        ListTile(
              title: Text('Pancasila'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Pancasila();
                }));
              },
            ),
            ListTile(
              title: Text('Kalender Kerja'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Kalender();
                }));
              },
            ),
            ListTile(
              title: Text('7 Lorem Ipsum'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Prinsip();
                }));
              },
            ),
            ListTile(
              title: Text('PKB'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Pkb();
                }));
              },
            ),
            ListTile(
              title: Text('5 Komitmen Keselamatan'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return LayoutK3();
                }));
              },
            ),
      ],
    ),
  ),
      body: pdf,
    );
  }
}
import 'package:flutter/material.dart';
import 'page1.dart';
import 'kalender.dart';
import 'pdf.dart';
import 'page3.dart';

class LayoutK3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'Logo',
      child: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
          child: new Image.asset('assets/k3.png')),
    );

    final header = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '5 Komitmen Keselamatan',
        style: TextStyle(fontSize: 20.0, color: Colors.black),
      ),
    );

    final text = Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '1. Saya harus memastikan area kerja aman, sebelum dan sesudah berkerja sesuai dengan 5S',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '2. Saya harus menggunakan alat pelindung diri, dengan baik dan benar',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '3. Saya harus bekerja mengikuti petunjuk kerja, dengan penuh tanggung jawab',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '4. Saya harus segera melaporkan dan mengingatkan, kondisi dan perilaku yang tidak aman',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '5. Saya harus waspada terhadap potensi bahaya dan penyakit akibat kerja',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
          ],
        ));

    final body = Container(
     width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: ListView(
        children: <Widget>[logo, header, text],
      ),
    );

return Scaffold(
    appBar: AppBar(
    title: const Text('5 Komitemen Keselamatan'),
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
              title: Text('5 Komitmen Keselamatan Kerja'),
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
      body: body,
    );
  }
}

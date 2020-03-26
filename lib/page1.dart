import 'package:flutter/material.dart';
import 'kalender.dart';
import 'pdf.dart';
import 'page2.dart';
import 'page3.dart';

class Pancasila extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'Logo',
      child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: new Image.asset('assets/garuda.png',
          height: MediaQuery.of(context).size.width - 150,
          )),
    );

    final header = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Pancasila',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
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
                    '1. Ketuhanan Yang Maha Esa',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '2. Kemanusiaan Yang Adil Dan beradab',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '3. Persatuan Indonesia',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '4. Kerakyatan Yang Dipimpin Oleh Hikmat Kebijaksanaan dalam permusyawaratan / perwakilan',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '5. Keadilan Sosial Bagi Seluruh Rakyat Indonesia',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
          ],
        ));

    final body = Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: ListView(
        children: <Widget>[logo, header, text],
      ),
    );

return Scaffold(
    appBar: AppBar(
    title: const Text('Pancasila'),
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
      body: body,
    );
  }
}

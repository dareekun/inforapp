import 'package:flutter/material.dart';
import 'page1.dart';
import 'kalender.dart';
import 'pdf.dart';
import 'page2.dart';

class Prinsip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'Logo',
      child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: new Image.asset(
            'assets/logo1.png',
            height: MediaQuery.of(context).size.height / 5,
          )),
    );

    final header = Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        '7 Lorem Ipsum',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
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
                    '1. What is Lorem Ipsum?',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '2. Where does it come from?',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '3. Why do we use it?',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '4. Where can I get some?',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '5. The standard Lorem Ipsum passage,',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '6. "de Finibus Bonorum et Malorum", written by Cicero in 45 BC',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '7. 1914 translation by H. Rackham',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
          ],
        ));

    final body = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(color: Colors.white),
      child: ListView(
        children: <Widget>[logo, header, text],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('7 Lorem Ipsum'),
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

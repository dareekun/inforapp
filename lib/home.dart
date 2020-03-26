import 'package:flutter/material.dart';
import 'page1.dart';
import 'kalender.dart';
import 'pdf.dart';
import 'page2.dart';
import 'page3.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'Logo',
      child: Padding(
          padding: EdgeInsets.fromLTRB(15, 25, 15, 20),
          child: new Image.asset(
            'assets/logo.png',
          )),
    );

    final header = Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 10),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'PT. Pabrikan',
          style: TextStyle(fontSize: 28.0, color: Colors.white),
        ),
      ),
    );

    final menu = Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                minWidth: 250,
                height: 50,
                color: Colors.lightBlueAccent,
                child: Text('Pancasila', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Pancasila();
                  }));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                minWidth: 250,
                height: 50,
                color: Colors.lightBlueAccent,
                child: Text('Kalender Kerja',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Kalender();
                  }));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                minWidth: 250,
                height: 50,
                color: Colors.lightBlueAccent,
                child: Text('7 Lorem Ipsum',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Prinsip();
                  }));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                minWidth: 250,
                height: 50,
                color: Colors.lightBlueAccent,
                child: Text('Perjanjian Kerja Bersama',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Pkb();
                  }));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                minWidth: 250,
                height: 50,
                color: Colors.lightBlueAccent,
                child: Text('5 Komitmen Keselamatan',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return LayoutK3();
                  }));
                },
              ),
            ),
          ],
        ));

    final body = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: ListView(
        children: <Widget>[logo, header, menu],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}

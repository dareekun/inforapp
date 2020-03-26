import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'page1.dart';
import 'pdf.dart';
import 'page2.dart';
import 'page3.dart';

final Map<DateTime, List> _holidays = {
  //curangi sabtu
  DateTime(2020, 1, 4): ['1'],
  DateTime(2020, 1, 11): ['1'],
  DateTime(2020, 1, 18): ['1'],
  DateTime(2020, 2, 1): ['1'],
  DateTime(2020, 2, 8): ['1'],
  DateTime(2020, 2, 15): ['1'],
  DateTime(2020, 2, 22): ['1'],
  DateTime(2020, 2, 29): ['1'],
  DateTime(2020, 3, 7): ['1'],
  DateTime(2020, 3, 14): ['1'],
  DateTime(2020, 3, 21): ['1'],
  DateTime(2020, 3, 28): ['1'],
  DateTime(2020, 4, 4): ['1'],
  DateTime(2020, 4, 11): ['1'],
  DateTime(2020, 4, 18): ['1'],
  DateTime(2020, 4, 25): ['1'],
  DateTime(2020, 5, 2): ['1'],
  DateTime(2020, 5, 16): ['1'],
  DateTime(2020, 5, 23): ['1'],
  DateTime(2020, 5, 30): ['1'],
  DateTime(2020, 6, 6): ['1'],
  DateTime(2020, 6, 13): ['1'],
  DateTime(2020, 6, 20): ['1'],
  DateTime(2020, 6, 27): ['1'],
  DateTime(2020, 7, 4): ['1'],
  DateTime(2020, 7, 11): ['1'],
  DateTime(2020, 7, 18): ['1'],
  DateTime(2020, 7, 25): ['1'],
  DateTime(2020, 8, 1): ['1'],
  DateTime(2020, 8, 8): ['1'],
  DateTime(2020, 8, 15): ['1'],
  DateTime(2020, 8, 22): ['1'],
  DateTime(2020, 8, 29): ['1'],
  DateTime(2020, 9, 5): ['1'],
  DateTime(2020, 9, 12): ['1'],
  DateTime(2020, 9, 19): ['1'],
  DateTime(2020, 9, 26): ['1'],
  DateTime(2020, 10, 3): ['1'],
  DateTime(2020, 10, 10): ['1'],
  DateTime(2020, 10, 17): ['1'],
  DateTime(2020, 10, 24): ['1'],
  DateTime(2020, 10, 31): ['1'],
  DateTime(2020, 11, 7): ['1'],
  DateTime(2020, 11, 14): ['1'],
  DateTime(2020, 11, 21): ['1'],
  DateTime(2020, 11, 28): ['1'],
  DateTime(2020, 12, 5): ['1'],
  DateTime(2020, 12, 12): ['1'],
  DateTime(2020, 12, 19): ['1'],
  DateTime(2020, 12, 26): ['1'],
  DateTime(2021, 01, 02): ['1'],
  DateTime(2021, 01, 09): ['1'],
  DateTime(2021, 01, 16): ['1'],
  DateTime(2021, 01, 23): ['1'],
  DateTime(2021, 01, 30): ['1'],
  DateTime(2021, 02, 06): ['1'],
  DateTime(2021, 02, 13): ['1'],
  DateTime(2021, 02, 20): ['1'],
  DateTime(2021, 02, 27): ['1'],
  DateTime(2021, 03, 06): ['1'],
  DateTime(2021, 03, 13): ['1'],
  DateTime(2021, 03, 20): ['1'],
  DateTime(2021, 03, 27): ['1'],
  //hari libur nasional
  DateTime(2020, 1, 1): ['Tahun Baru 2020'],
  DateTime(2020, 1, 25): ['Tahun Baru Imlek 2571'],
  DateTime(2020, 3, 22): ['Isra Miraj Nabi Muhammad SAW'],
  DateTime(2020, 3, 25): ['Hari Raya Nyepi'],
  DateTime(2020, 4, 10): ['Wafat Isa Almasih'],
  DateTime(2020, 5, 1): ['Hari Buruh Internasional'],
  DateTime(2020, 5, 7): ['Hari Raya Waisak 2564'],
  DateTime(2020, 5, 21): ['Kenaikan Isa Almasih'],
  DateTime(2020, 5, 24): ['Hari Raya Idul Fitri'],
  DateTime(2020, 5, 25): ['Hari Raya Idul Firti'],
  DateTime(2020, 6, 1): ['Hari Lahir Pancasila'],
  DateTime(2020, 7, 31): ['Hari Raya Idul Adha'],
  DateTime(2020, 8, 17): ['Hari Kemerdekaan Indonesia'],
  DateTime(2020, 8, 20): ['Tahun Baru Islam 1442H'],
  DateTime(2020, 10, 29): ['Maulid Nabi Muhammad SAW'],
  DateTime(2020, 12, 25): ['Hari Raya Natal'],
  DateTime(2021, 1, 1): ['Tahun Baru 2021'],
  //hari libur khusus
  DateTime(2020, 5, 22): ['Libur Hari Raya'],
  DateTime(2020, 5, 26): ['Libur Hari Raya'],
  DateTime(2020, 5, 27): ['Libur Hari Raya'],
  DateTime(2020, 5, 28): ['Libur Hari Raya'],
  DateTime(2020, 5, 29): ['Libur Hari Raya'],
  DateTime(2020, 12, 24): ['Cuti Bersama Hari Natal'],
  DateTime(2020, 12, 31): ['Hari Libur Perusahaan'],
};

class Kalender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalender Kerja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Kalender Kerja'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  Map<DateTime, List> _events;
  List _selectedEvents;
  AnimationController _animationController;
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();

    _events = {
      DateTime(2020, 1, 1): ['Tahun Baru 2020'],
      DateTime(2020, 1, 25): ['Tahun Baru Imlek 2571'],
      DateTime(2020, 3, 22): ['Isra Miraj Nabi Muhammad SAW'],
      DateTime(2020, 3, 25): ['Hari Raya Nyepi'],
      DateTime(2020, 4, 10): ['Wafat Isa Almasih'],
      DateTime(2020, 5, 1): ['Hari Buruh Internasional'],
      DateTime(2020, 5, 7): ['Hari Raya Waisak 2564'],
      DateTime(2020, 5, 21): ['Kenaikan Isa Almasih'],
      DateTime(2020, 5, 24): ['Hari Raya Idul Fitri'],
      DateTime(2020, 5, 25): ['Hari Raya Idul Firti'],
      DateTime(2020, 6, 1): ['Hari Lahir Pancasila'],
      DateTime(2020, 7, 31): ['Hari Raya Idul Adha'],
      DateTime(2020, 8, 17): ['Hari Kemerdekaan Indonesia'],
      DateTime(2020, 8, 20): ['Tahun Baru Islam 1442H'],
      DateTime(2020, 10, 29): ['Maulid Nabi Muhammad SAW'],
      DateTime(2020, 12, 25): ['Hari Raya Natal'],
      DateTime(2021, 1, 1): ['Tahun Baru 2021'],
      //event libur khusus
      DateTime(2020, 4, 24): ['Awal Ramadhan'],
      DateTime(2020, 5, 9): ['Sabtu Kerja'],
      DateTime(2020, 5, 22): ['Libur Hari Raya'],
      DateTime(2020, 5, 26): ['Libur Hari Raya'],
      DateTime(2020, 5, 27): ['Libur Hari Raya'],
      DateTime(2020, 5, 28): ['Libur Hari Raya'],
      DateTime(2020, 5, 29): ['Libur Hari Raya'],
      DateTime(2020, 12, 24): ['Cuti Bersama Hari Natal'],
      DateTime(2020, 12, 31): ['Hari Libur Perusahaan'],
    };

    _selectedEvents = [];
    _calendarController = CalendarController();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events) {
    print('CALLBACK: _onDaySelected');
    setState(() {
      _selectedEvents = events;
    });
  }

  void _onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onVisibleDaysChanged');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          // Switch out 2 lines below to play with TableCalendar's settings
          //-----------------------
          _buildTableCalendarWithBuilders(),
          // _buildTableCalendarWithBuilders(),
          const SizedBox(height: 16.0),
          Expanded(child: _buildEventList()),
        ],
      ),
    );
  }

  // More advanced TableCalendar configuration (using Builders & Styles)
  Widget _buildTableCalendarWithBuilders() {
    return TableCalendar(
      locale: 'en_US',
      calendarController: _calendarController,
      events: _events,
      holidays: _holidays,
      initialCalendarFormat: CalendarFormat.month,
      weekendDays: const [DateTime.sunday],
      formatAnimation: FormatAnimation.slide,
      availableGestures: AvailableGestures.horizontalSwipe,
      startingDayOfWeek: StartingDayOfWeek.monday,
      startDay: DateTime(2020, 01, 01),
      endDay: DateTime(2021, 03, 31),
      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,
        weekendStyle: TextStyle().copyWith(color: Colors.red),
        holidayStyle: TextStyle().copyWith(color: Colors.red),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekendStyle: TextStyle().copyWith(color: Colors.red),
      ),
      headerStyle: HeaderStyle(
        centerHeaderTitle: true,
        formatButtonVisible: false,
      ),
      builders: CalendarBuilders(
        selectedDayBuilder: (context, date, _) {
          return FadeTransition(
            opacity: Tween(begin: 0.0, end: 1.0).animate(_animationController),
            child: Container(
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.only(top: 5.0, left: 6.0),
              color: Colors.deepOrange[300],
              width: 100,
              height: 100,
              child: Text(
                '${date.day}',
                style: TextStyle().copyWith(fontSize: 16.0),
              ),
            ),
          );
        },
        todayDayBuilder: (context, date, _) {
          return Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.only(top: 5.0, left: 6.0),
            color: Colors.amber[400],
            width: 100,
            height: 100,
            child: Text(
              '${date.day}',
              style: TextStyle().copyWith(fontSize: 16.0),
            ),
          );
        },
        markersBuilder: (context, date, events, holidays) {
          final children = <Widget>[];

          if (events.isNotEmpty) {
            children.add(
              Positioned(
                right: 1,
                bottom: 1,
                child: _buildEventsMarker(date, events),
              ),
            );
          }

          return children;
        },
      ),
      onDaySelected: (date, events) {
        _onDaySelected(date, events);
        _animationController.forward(from: 0.0);
      },
      onVisibleDaysChanged: _onVisibleDaysChanged,
    );
  }

  Widget _buildEventsMarker(DateTime date, List events) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: _calendarController.isSelected(date)
            ? Colors.brown[500]
            : _calendarController.isToday(date)
                ? Colors.brown[300]
                : Colors.blue[400],
      ),
      width: 16.0,
      height: 16.0,
      child: Center(
        child: Text(
          '${events.length}',
          style: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }

  Widget _buildEventList() {
    return ListView(
      children: _selectedEvents
          .map((event) => Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 0.8),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: ListTile(
                  title: Text(event.toString()),
                  onTap: () => print('$event tapped!'),
                ),
              ))
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar App',
      theme: ThemeData.dark().copyWith(),
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SCHEDULE',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                DayCard(),
                DayCard(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                DayCard(),
                DayCard(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                DayCard(),
                DayCard(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                DayCard(),
                DayCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DayCard extends StatelessWidget {
  final String title;

  DayCard({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 12.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            children: [
              Text(
                'title',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

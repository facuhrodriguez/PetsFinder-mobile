import 'package:flutter/material.dart';
import 'package:pets_finder/pages/home.dart';
import 'package:pets_finder/pages/login.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

final widgetTitle = ["Person", "Home1", "Home2", "Home3"];

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widgetTitle.elementAt(selectedIndex)),
        ),
        bottomNavigationBar: getFooter(),
        body: getBody());
  }

  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget getBody() {
    return IndexedStack(
      index: selectedIndex,
      children: const [
        HomePage(),
        HomePage(),
        HomePage(),
        LoginPage(),
      ],
    );
  }

  Widget getFooter() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Person',
          backgroundColor: Color(0XFFDBDFFD),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home1',
          backgroundColor: Color(0XFFDBDFFD),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.percent),
            label: 'Home2',
            backgroundColor: Color(0XFFDBDFFD)),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm_rounded),
            label: 'Home3',
            backgroundColor: Color(0XFFDBDFFD)),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: const Color(0XFF646FD4),
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }
}

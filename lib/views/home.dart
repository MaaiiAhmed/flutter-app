import 'package:flutterProject1/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutterProject1/views/allPosts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  int _currentIndex = 0;

  final List<Widget> tabs = [AllPosts(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.red.withOpacity(.60),
          // selectedLabelStyle: TextStyle(fontFamily: 'Times'),
          // unselectedLabelStyle: TextStyle(fontFamily: 'Times'),
          selectedFontSize: 21,
          unselectedFontSize: 17,
          iconSize: 25,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}

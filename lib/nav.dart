import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Campus IITU')),
      body: Text('Home'),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
          title : Text('Profile')),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), 
          title : Text('Schedule')),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance), 
          title : Text('Study Plan')),
        ],
      ),
    );
  }
}
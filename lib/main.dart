import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Campus IITU',
        home: MainPage(),
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
      drawer: NavigationDrawerWidget(),
    appBar: AppBar(title: Text("Campus IITU"),),
    );
  }
}


class NavigationDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF0F1F3D),
        child: ListView(
          children: [
              const SizedBox(height: 56),
              Container(
                margin: EdgeInsets.all(20),
                child: Text('CAMPUS IITU', style: TextStyle(color: Colors.white, fontSize: 25))),
              buildMenuItem( "Profile", Icons.person),
              buildMenuItem( "Schedule", Icons.calendar_today),
              buildMenuItem( "My Study Plan", Icons.list_alt_outlined),
              buildMenuItem( "Certificates", Icons.dock_outlined),
              buildMenuItem( "Log out", Icons.logout),
          ],
        ),
      )
    );
  }

  Widget buildMenuItem(String text, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(text, style: TextStyle(color: Colors.white)),
      hoverColor: Colors.white70,
      onTap: (){},
    );
  }
}
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
    appBar: AppBar(title: Text("Campus IITU"), backgroundColor: Color(0xFF0F1F3D)),
    );
  }
}


class NavigationDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color(0xFF0F1F3D),
        child: ListView(
          children: [
              const SizedBox(height: 56),
              Container(
                margin: EdgeInsets.all(20),
                child: Text('CAMPUS IITU', style: TextStyle(color: Colors.white, fontSize: 25))),
              buildMenuItem( "Profile", Icons.person,  ()  => selectedItem(context, 0)),
              buildMenuItem( "Notifications", Icons.notification_important, ()  => selectedItem(context, 1)),
              buildMenuItem( "Schedule", Icons.calendar_today, ()  => selectedItem(context, 2)),
              buildMenuItem( "My Study Plan", Icons.list_alt_outlined, ()  => selectedItem(context, 3)),
              buildMenuItem( "Certificates", Icons.dock_outlined, ()  => selectedItem(context, 4)),
              buildMenuItem( "Log out", Icons.logout, ()  => selectedItem(context, 5)),
          ],
        ),
      )
    );
  }

  Widget buildMenuItem(String text, IconData icon, VoidCallback onClicked) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(text, style: TextStyle(color: Colors.white)),
      hoverColor: Colors.white70,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)  => ProfilePage(),
          ));
          break;
         case 1:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)  => NotificationPage(),
          ));
          break;
         case 2:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)  => SchedulePage(),
          ));
          break;
         case 3:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)  => StudyPlanPage(),
          ));
          break;
           case 4:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)  => CertificatePage(),
          ));
          break;
    }
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Color(0xFF0F1F3D)
      ),
    );
  }
}

class AcademicCalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academic Calendar'),
        centerTitle: true,
        backgroundColor: Color(0xFF0F1F3D)
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
        backgroundColor: Color(0xFF0F1F3D)
      ),
    );
  }
}

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        centerTitle: true,
        backgroundColor: Color(0xFF0F1F3D)
      ),
    );
  }
}


class StudyPlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Study Plan'),
        centerTitle: true,
        backgroundColor: Color(0xFF0F1F3D)
      ),
    );
  }
}



class CertificatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Certificates'),
        centerTitle: true,
        backgroundColor: Color(0xFF0F1F3D)
      ),
    );
  }
}





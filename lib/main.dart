import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Megsoft Test",
      // Home
      home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Drawer getNavDrawer(BuildContext context) {     
    var headerChild = DrawerHeader(
      child: Text("Megsoft"));
   
    ListTile getNavItem(var icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(s),        
      );
    }

    var myNavChildren = [      
      headerChild,
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Account", "/"),      
      getNavItem(Icons.settings, "Settings", "/"),           
      
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Megsoft Test"),
      ),
      body: Container(
          child: Center(
        child: Text("Welcome"),
      )),
      // Set the nav drawer
      drawer: (getNavDrawer(context)),
    );
  }
}
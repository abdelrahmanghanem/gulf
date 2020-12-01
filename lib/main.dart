import 'package:flutter/material.dart';
import 'package:gulftech/src/favorites.dart';
import 'package:gulftech/src/home.dart';
import 'package:gulftech/src/postad.dart';
import 'package:gulftech/src/profile.dart';
import 'package:gulftech/src/setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final _pageOptions = [
    HomePage(),
    PostAd(),
    Profile(),
    Favorites(),
    Setting(),

  ];


  @override

  Widget build(BuildContext context) {
    return Scaffold(

      body: _pageOptions[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 22,
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedIconTheme: IconThemeData(size: 28),
        unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
        selectedFontSize: 13,
        unselectedFontSize: 10,
        selectedItemColor: Colors.red,
        // unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(
            icon:Container(width: 40,height: 25,
              child: Icon(Icons.home)),
            title: Text("Home"),
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
              icon:Container(width: 40,height: 30,
                child: Icon(Icons.post_add_rounded)),
              title: Text("Post Ad"),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon:Container(width: 40,height: 30,
                child: Icon(Icons.perm_contact_cal_sharp)),
              title: Text("My Profile"),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon:Container(width: 40,height: 30,
                child:  Icon(Icons.favorite_border)),
              title: Text("Favorites"),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon:Container(
                width: 40,
                child:  Icon(Icons.settings)),
              title: Text("Settings"),
              backgroundColor: Colors.deepOrangeAccent),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'browser_page.dart';
import 'paste_link_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        iconTheme: IconThemeData(size: 36.0, color: Colors.black87),
        title: Text("Download-YouTube",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.black87,
      ),

      body: pages[_currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        items: items,
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },

      ),


    );
  }

  List<Widget> pages = [
    PasteLinkPage(),
    BrowserPage(),
  ];

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.paste), label: "Paste Link"),
    BottomNavigationBarItem(icon: Icon(Icons.network_cell), label: "Browser"),
  ];
}
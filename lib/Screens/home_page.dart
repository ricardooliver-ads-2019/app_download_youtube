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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Container(
          height: 130,
          color: Colors.black87,
          child: Center(
            child: ListTile(
              leading: Container(
                child: Center(
                  child: Icon(Icons.play_arrow_rounded, size: 40, color: Colors.white,)
                ),
                height: 48,
                width: 58,
                decoration: BoxDecoration(
                  color: Colors.red, 
                  borderRadius: BorderRadius.circular(5)
                ),
              ),
              title: Text("Download",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text("-YouTube", 
                  style: TextStyle(
                    color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ),
          ),),
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
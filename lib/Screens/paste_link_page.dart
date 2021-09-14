import 'package:app_download_youtube/Screens/browser_page.dart';
import 'package:app_download_youtube/models/downloader.dart';
import 'package:flutter/material.dart';

class PasteLinkPage extends StatefulWidget {
  const PasteLinkPage({ Key? key }) : super(key: key);

  @override
  _PasteLinkPageState createState() => _PasteLinkPageState();
}

class _PasteLinkPageState extends State<PasteLinkPage> {
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

            ///Text Form field for pasting the link
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(        
                controller: _textController,
                decoration: InputDecoration(
                  labelText: "Cole o link do video aqui!",
                  labelStyle: TextStyle(color: Colors.red)
                ),
              ),
            ),
            
    
            ///Download Buntton for extrating and download the link
            GestureDetector(
              onTap: (){
                if (_textController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Link não informafo!!!", style: TextStyle(color: Colors.red),)));
                  
                } else {
                  ///Download the video
                  
                  Download().downloadVideo(_textController.text.trim(), "Download-YouTube");
                }
              },
              child: Container(
                margin: const EdgeInsets.all(50),
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black87,
                ),
                child: Text("Fazer Download", 
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  
}
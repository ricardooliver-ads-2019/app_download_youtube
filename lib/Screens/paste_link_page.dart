import 'package:app_download_youtube/Screens/browser_page.dart';
import 'package:app_download_youtube/models/downloader.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              child: Column(
                children: [
                  TextField(        
                    controller: _textController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      labelText: "Cole o link do video aqui!",
                      border: InputBorder.none,
                      icon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Icon(Icons.paste_outlined),
                          ),
                          Container(
                            width: 1,
                            height: 48,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                      
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.black45,

                  )
                ],
              ),
            ),
            
    
            ///Download Buntton for extrating and download the link
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: FloatingActionButton.extended(
                backgroundColor: Colors.black87,
                onPressed: (){
                  if (_textController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Link não informafo!!!", style: TextStyle(color: Colors.red),)));
                  
                } else {
                  ///Download the video
                  
                  Download().downloadVideo(_textController.text.trim(), "Download-YouTube.");
                }
                },
                 label: Text("Download"),
                 icon: FaIcon(FontAwesomeIcons.cloudDownloadAlt, color: Colors.red,),
              ),
            )
          ],
        ),
      ),
    );
  }

  
}
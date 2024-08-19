

// class ChatPage extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     return ChatState();
//   }
//
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/coustom_page.dart';
import 'package:whatsapp/resource_page.dart';

class ChatPage extends StatelessWidget{
  int cIndex;
  ChatPage({required this.cIndex});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leadingWidth: 100,
        leading: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back)),
            CoustomCircle(width: 40.00, height: 40.00, imuil:WhatsApp.wData[cIndex]['image']),
          ],
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(WhatsApp.wData[cIndex]['name'],style: mTextStyle20(mFontColor: Colors.white),),
        ),
        actions: [
          IconButton(
              onPressed: (){

              }, icon: Icon(Icons.call_outlined)),
          PopupMenuButton(
              color: Colors.black,
              position: PopupMenuPosition.under,
              itemBuilder: (_){
            return [
              PopupMenuItem(child: Text("Group info",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)),
              PopupMenuItem(child: Text("Group media",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)),
              PopupMenuItem(child: Text("Search",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)),
              PopupMenuItem(child: Text("Mute notifications",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)),
              PopupMenuItem(child: Text("Wallpaper",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)),
              PopupMenuItem(child: Text("More",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),))
            ];
          })
        ],
      ),
    );
  }
}
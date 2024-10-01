
import 'package:flutter/material.dart';
import 'package:whatsapp/call_page.dart';
import 'package:whatsapp/communities_page.dart';
import 'package:whatsapp/home_page.dart';
import 'package:whatsapp/updates_page.dart';

class BottomnavigationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BottomState();

  }

}
class BottomState extends State<BottomnavigationPage>{
  int selectedIndex=0;
  List<Widget> naviratList=[
    HomePage(),
    UpdatesPages(),
    CommunitiesPage(),
    CallPages(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: naviratList[selectedIndex],
      bottomNavigationBar: NavigationBar(

        backgroundColor: Colors.black,
        indicatorColor: Colors.green,
        destinations: [
          NavigationDestination(
              selectedIcon: Icon(Icons.chat,color: Colors.white,),
              icon: Icon(Icons.chat_outlined,color: Colors.white,),label: "Chats",),
          NavigationDestination(
              selectedIcon: Icon(Icons.radio_button_on,color: Colors.white,),
              icon: Icon(Icons.radio_button_off,color: Colors.white,), label: "Updates"),
          NavigationDestination(
              selectedIcon: Icon(Icons.supervisor_account_rounded,color: Colors.white,),
              icon: Icon(Icons.supervisor_account_outlined,color: Colors.white,), label: "Communities"),
          NavigationDestination(
              selectedIcon: Icon(Icons.call,color: Colors.white,),
              icon: Icon(Icons.call_end_outlined,color: Colors.white,), label: "Calls",)
        ],
        selectedIndex: selectedIndex,
        onDestinationSelected: (value){
          selectedIndex=value;
          setState(() {

          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/bottomnavigation_page.dart';
import 'package:whatsapp/call_page.dart';
import 'package:whatsapp/chat_page.dart';
import 'package:whatsapp/communities_page.dart';
import 'package:whatsapp/coustom_page.dart';
import 'package:whatsapp/home_page.dart';
import 'package:whatsapp/provide_page.dart';
import 'package:whatsapp/updates_page.dart';

void main(){
  runApp(ChangeNotifierProvider(
      create: (context) =>ProvidePage(),
      child: MainApp()));
}
class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BottomnavigationPage(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:whatsapp/resource_page.dart';

class CallPages extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>CallState();
}

class CallState extends State<CallPages>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Calls",style:mTextStyle20(mFontColor: Colors.white)),
        ),
        actions: [
          IconButton(onPressed: (){

      },icon: Icon(Icons.qr_code_scanner)),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.search)),
          PopupMenuButton(
            position: PopupMenuPosition.under,
              color: Colors.black,
              itemBuilder: (_){
              return[
                PopupMenuItem(child: Text("Crear call log",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
                PopupMenuItem(child: Text("Settings",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),))
              ];
            })
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Favourites",style: mTextStyle16(mFontColor: Colors.white),),
              ListTile(
                leading:CircleAvatar(
                  backgroundColor: Colors.green,
                  child:Icon(Icons.favorite,color: Colors.black,),
                ),
                title: Text("Add to Favourites",style: mTextStyle16(mFontColor: Colors.white),),
              ),
              Text("Recent",style: mTextStyle15(mFontColor: Colors.white),),
              Container(
                height: 480,
                child: ListView.builder(
                    itemCount: WhatsApp.wData.length,
                    itemBuilder: (_,index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:AssetImage(WhatsApp.wData[index]['image']),
                    ),
                    title: Text(WhatsApp.wData[index]['name'],style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_received,color: Colors.green,size: 10,),
                        SizedBox(width: 10,),
                        Text(WhatsApp.wData[index]['date'],style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white54),),
                        SizedBox(width: 10,),
                        Text(WhatsApp.wData[index]['time'],style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white54),)
                      ],
                    ),
                    trailing: Icon(Icons.videocam_outlined,color: Colors.white,),
                  );
                })),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){

        },child: Icon(Icons.add_ic_call_outlined,color: Colors.black,),
      ),
    );
  }
}





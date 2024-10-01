
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/chat_page.dart';
import 'package:whatsapp/communities_page.dart';
import 'package:whatsapp/coustom_page.dart';
import 'package:whatsapp/provide_page.dart';
import 'package:whatsapp/resource_page.dart';

class HomePage extends StatefulWidget{


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:MediaQuery.of(context).orientation==Orientation.landscape?  AppBar(
        title: Text("Chats",style: mTextStyle20(),),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.medication_sharp)),
          PopupMenuButton(itemBuilder:(_){
            return[
              PopupMenuItem(
                  onTap: (){

                  },
                  child:Text("New group",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
              PopupMenuItem(child: Text("New broadcast",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
              PopupMenuItem(child:Text( "Linked devices",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
              PopupMenuItem(child: Text("Starred messages",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
              PopupMenuItem(child: Text("Payments",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal))),
              PopupMenuItem(child: Text("Settings",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
            ];
          },)
        ],
      ):AppBar(
        backgroundColor: Colors.black,
        foregroundColor:Colors.white,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("WhatsApp",style: mTextStyle20(mFontColor: Colors.white),),
        ),
        actions: [
          IconButton(
              onPressed: (){

              }, icon: Icon(Icons.qr_code_scanner,)),
          IconButton(
              onPressed:(){

              }, icon: Icon(Icons.camera_alt_outlined,)),
          PopupMenuButton(
            position:PopupMenuPosition.under,
            color: Colors.black,
              itemBuilder: (_){
                return[
                 PopupMenuItem(
                   onTap: (){

                   },
                     child:Text("New group",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
                  PopupMenuItem(child: Text("New broadcast",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
                  PopupMenuItem(child:Text( "Linked devices",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
                  PopupMenuItem(child: Text("Starred messages",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
                  PopupMenuItem(child: Text("Payments",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal))),
                  PopupMenuItem(child: Text("Settings",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),

                ];

              })
        ],

      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:
        MediaQuery.of(context).orientation==Orientation.landscape?Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                      width:MediaQuery.of(context).size.width>600?MediaQuery.of(context).size.width*0.4:MediaQuery.of(context).size.width*0.3,
                      height: 50,
                      decoration:BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child:
                      Row(
                        children: [
                         SizedBox(width: 10,),
                          Icon(Icons.camera,color: Colors.blue,),
                         SizedBox(width: 20,),
                          Container(
                            width: 200,
                            height: 20,
                            child: TextField(
                              controller:searController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Ask Meta AI or Search",
                                hintStyle:TextStyle(color: Colors.grey.withOpacity(0.3)),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                  /// list
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      child:ListView.builder(
                          itemCount: WhatsApp.wData.length,
                          itemBuilder: (_,index){

                            return InkWell(
                              onTap: (){
                               if(MediaQuery.of(context).orientation==Orientation.landscape){
                                // WhatsApp.selectedIndex=index;
                                 context.read<ProvidePage>().setIndex(index);
                               }else{
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage(cIndex: index)));
                               }
                               setState(() {

                               });
                              },
                              child: ListTile(
                                leading:CoustomCircle(width: 50.00, height: 50.00, imuil:WhatsApp.wData[index]['image']) ,
                                title: Text(WhatsApp.wData[index]['name'],style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),),
                                subtitle: Text(WhatsApp.wData[index]['chat'],style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white54),),
                                trailing: Column(
                                  children: [
                                    Text(WhatsApp.wData[index]['time'],style:mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white54) ,),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                      child: Center(child: Text(WhatsApp.wData[index]['count'])),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  )


                ],
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 3,
              child:ChatPage(cIndex:context.read<ProvidePage>().getIndex())
            ),


          ],):
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              /// search bar
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 350,
                      height: 50,
                      decoration:BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child:
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.camera,color: Colors.blue,),
                          SizedBox(width: 20,),
                          Container(
                            width: 200,
                            height: 20,
                            child: TextField(
                              controller:searController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Ask Meta AI or Search",
                                hintStyle:TextStyle(color: Colors.grey.withOpacity(0.3)),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
              SizedBox(height:  10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){

                  },style:ElevatedButton.styleFrom(backgroundColor: Colors.white10),
                    child:Text("All",style: mTextStyle8(mFontColor: Colors.green),),),
                  SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){}, style:ElevatedButton.styleFrom(backgroundColor: Colors.white10,),
                      child: Text("Unread",style: mTextStyle8(mFontColor: Colors.green),)),
                  SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.white10),
                      child: Text("Favourites",style: mTextStyle8(mFontColor: Colors.green),)),
                  SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){}, style:ElevatedButton.styleFrom(backgroundColor: Colors.white10),
                      child:Text("Groups",style: mTextStyle8(mFontColor: Colors.green),))
                ],
              ),
              /// list
              Container(
                width: double.infinity,
                height: 650,
                child:ListView.builder(
                    itemCount: WhatsApp.wData.length,
                    itemBuilder: (_,index){
                      return InkWell(
                        onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage(cIndex: index+1)));

                        },
                        child: ListTile(
                          leading:CoustomCircle(width: 50.00, height: 50.00, imuil:WhatsApp.wData[index]['image']) ,
                          title: Text(WhatsApp.wData[index]['name'],style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),),
                          subtitle: Text(WhatsApp.wData[index]['chat'],style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white54),),
                          trailing: Column(
                            children: [
                              Text(WhatsApp.wData[index]['time'],style:mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white54) ,),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                child: Center(child: Text(WhatsApp.wData[index]['count'])),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        )
      ),
      floatingActionButton: MediaQuery.of(context).orientation==Orientation.landscape?Container():
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
              backgroundColor: Colors.black45,
              onPressed: (){

              },child: Icon(Icons.camera,color: Colors.blue,),),
          FloatingActionButton(
            backgroundColor: Colors.green,
              onPressed: (){

              },child: Icon(Icons.message_rounded),),
        ],
      ),
    );

  }
}


import 'package:flutter/material.dart';
import 'package:whatsapp/chat_page.dart';
import 'package:whatsapp/coustom_page.dart';
import 'package:whatsapp/resource_page.dart';


class UpdatesPages extends StatefulWidget{
  @override
  State<UpdatesPages> createState() => UpdatesPagesState();
}

class UpdatesPagesState extends State<UpdatesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MediaQuery.of(context).orientation==Orientation.landscape?
      AppBar(
        leadingWidth: 200,
        leading: Text("Status",style: mTextStyle20(),),
        actions: [IconButton(onPressed: (){}, icon:Icon(Icons.add)),PopupMenuButton(itemBuilder: (_){
        return [
          PopupMenuItem(child:Text("Status Privacy"))
        ];
      })],):
      AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Updates",style: mTextStyle20(mFontColor: Colors.white,),),
        ),
        actions: [
          IconButton(
              onPressed: (){

              }, icon: Icon(Icons.qr_code_scanner,)),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.camera_alt_outlined,)),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.search,)),
          PopupMenuButton(
              color: Colors.black,
              position: PopupMenuPosition.under,
              itemBuilder: (_){
            return[
              PopupMenuItem(child: Text("Status privacy",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)),
              PopupMenuItem(child: Text("Create channel",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),)),
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
          child:MediaQuery.of(context).orientation==Orientation.landscape? Row(
            children: [
              Expanded(
                child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      /// status
                      Text("Status",style: mTextStyle20(mFontColor: Colors.white),),
                      SizedBox(height: 10,),
                      ListTile(
                        leading: InkWell(
                          onTap: (){
                          },
                          child: CircleAvatar(
                            backgroundImage:NetworkImage("https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=400"),
                            child:Stack(
                              children: [
                                Positioned(
                                  top: 15,
                                  left: 15,
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green,
                                    ),
                                    child: Center(child: Icon(Icons.add,size: 15,)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      /// viewed updates
                      Text("Viewed updates",style: mTextStyle13(mFontColor: Colors.white54),),
                      Container(
                          height:430 ,
                          child: ListView.builder(
                            itemCount: WhatsApp.wData.length,
                              itemBuilder: (_,index){
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    backgroundImage:AssetImage(WhatsApp.wData[index]['image']),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white30,
                                            width: 2,
                                            strokeAlign: BorderSide.strokeAlignOutside
                
                                          )
                                      ),
                                    ),
                                  ),
                                  title: Text(WhatsApp.wData[index]['name'],style:mTextStyle15(mFontColor: Colors.white),),
                                  subtitle: Text(WhatsApp.wData[index]['time'],style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white30),),
                                );
                              })
                      ),
                
                    ],
                  ),
              ),
            ],
          ):Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              /// status
              Text("Status",style: mTextStyle20(mFontColor: Colors.white),),
              SizedBox(height: 10,),
              ListTile(
                leading: InkWell(
                  onTap: (){
                  },
                  child: CircleAvatar(
                    backgroundImage:NetworkImage("https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=400"),
                    child:Stack(
                      children: [
                        Positioned(
                          top: 15,
                          left: 15,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: Center(child: Icon(Icons.add,size: 15,)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              /// viewed updates
              Text("Viewed updates",style: mTextStyle13(mFontColor: Colors.white54),),
              Container(
                  height:430 ,
                  child: ListView.builder(
                      itemCount: WhatsApp.wData.length,
                      itemBuilder: (_,index){
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            backgroundImage:AssetImage(WhatsApp.wData[index]['image']),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white30,
                                      width: 2,
                                      strokeAlign: BorderSide.strokeAlignOutside

                                  )
                              ),
                            ),
                          ),
                          title: Text(WhatsApp.wData[index]['name'],style:mTextStyle15(mFontColor: Colors.white),),
                          subtitle: Text(WhatsApp.wData[index]['time'],style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white30),),
                        );
                      })
              ),

            ],
          )
        ),
      ),
      floatingActionButton:MediaQuery.of(context).orientation==Orientation.landscape?Container():
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            backgroundColor: Colors.black45,
            onPressed: (){

          },child: Icon(Icons.edit,color: Colors.white,),),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: (){

          },child: Icon(Icons.camera_alt_outlined),),
        ],
      ),
    );

  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp/coustom_page.dart';
import 'package:whatsapp/resource_page.dart';

class CommunitiesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>CommunitState();
}

class CommunitState extends State<CommunitiesPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MediaQuery.of(context).orientation==Orientation.landscape?AppBar(title: Text("Communities",style: mTextStyle20(),),):
      AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leadingWidth: 200,
        leading:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Communities",style: mTextStyle20(mFontColor: Colors.white),),
        ),
        actions:[
          IconButton(
              onPressed: (){

              }, icon: Icon(Icons.qr_code_scanner)),
          IconButton(
              onPressed: (){

              }, icon: Icon(Icons.camera_alt_outlined)),
          PopupMenuButton(
            color: Colors.black,
            position: PopupMenuPosition.under,
              itemBuilder: (_){
            return[
              PopupMenuItem(child: Text("Setting",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),))

            ];
          })
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child:MediaQuery.of(context).orientation==Orientation.landscape?Row(children: [
          Expanded(
            child: Column(
              children: [
                /// new community
                Container(
                  width: double.infinity,
                  height:80 ,
                  color: Colors.white10,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
            
                          },
                          child: ListTile(
                            leading: CoustomContainer(width: 50.00,height: 50.00,child:Stack(
                              children: [
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green
                                    ),
                                    child: Center(child: Icon(Icons.add,size: 10,)),
                                  ),
                                ),
                              ],
                            ),image:"assets/icons/ic_img2.jpg",),
                            title: Text("New comminity",style: mTextStyle15(mFontColor: Colors.white),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 200,
                  color:Colors.white10,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading:CoustomContainer(width: 50.00, height:50.00, child: Container(),image: "assets/icons/ic_img6.jpg",),
                          title:Text("BCA Alumni",style: mTextStyle15(mFontColor: Colors.white),),
                        ),
                      ),
                      Container(width: double.infinity,
                        height: 1,
                        color: Colors.black26,),
                      ListTile(
                        leading:CoustomContainer(width: 50.00, height:50.00, child: Container(),image:"assets/icons/ic_announce.png",),
                        title:Text("Announcements",style: mTextStyle15(mFontColor: Colors.white),),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        leading:CoustomContainer(width: 50.00, height:50.00, child: Container(),image: "assets/icons/ic_announce.png",),
                        title:Text("Announcements",style: mTextStyle15(mFontColor: Colors.white),),
                      ),
                    ],
                  ),
                )
            
              ],
            ),
          ),
        ],):
        Column(
          children: [
            /// new community
            Container(
              width: double.infinity,
              height:80 ,
              color: Colors.white10,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){

                      },
                      child: ListTile(
                        leading: CoustomContainer(width: 50.00,height: 50.00,child:Stack(
                          children: [
                            Positioned(
                              top: 30,
                              left: 30,
                              child: Container(
                                width: 20,
                                height: 20,
                                 decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                     color: Colors.green
                                    ),
                                    child: Center(child: Icon(Icons.add,size: 10,)),
                               ),
                            ),
                          ],
                        ),image:"assets/icons/ic_img2.jpg",),
                       title: Text("New comminity",style: mTextStyle15(mFontColor: Colors.white),),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 200,
              color:Colors.white10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading:CoustomContainer(width: 50.00, height:50.00, child: Container(),image: "assets/icons/ic_img6.jpg",),
                    title:Text("BCA Alumni",style: mTextStyle15(mFontColor: Colors.white),),
                    ),
                  ),
                  Container(width: double.infinity,
                  height: 1,
                  color: Colors.black26,),
                  ListTile(
                    leading:CoustomContainer(width: 50.00, height:50.00, child: Container(),image:"assets/icons/ic_announce.png",),
                    title:Text("Announcements",style: mTextStyle15(mFontColor: Colors.white),),
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    leading:CoustomContainer(width: 50.00, height:50.00, child: Container(),image: "assets/icons/ic_announce.png",),
                    title:Text("Announcements",style: mTextStyle15(mFontColor: Colors.white),),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }

}



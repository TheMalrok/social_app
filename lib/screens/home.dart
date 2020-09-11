import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nice_button/nice_button.dart';
import 'loginPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<int> _list = List.generate(50, (i) => i);
  List<bool> _selected = List.generate(50, (i) => false); // initially fill it up with false

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            bottom: TabBar(
              isScrollable: false,
              tabs: [
                Tab(icon: Text('Home'),),
                Tab(icon: Text('My Profile'),),
                Tab(icon: Text('Settings'),),
              ],
            ),
            title: Center(child: Text("Social App")),
          ),
          body: TabBarView(
            //var likes=0;
            children: [
              Container(
                    decoration: BoxDecoration(//Home
                    image: DecorationImage(
                    image: AssetImage('images/bg.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
                 child:
                 Padding(
                   padding: const EdgeInsets.all(18.0),
                   child: ListView.builder(itemBuilder: (_,i){
                     return Card(
                       color: Colors.transparent,
                       child: InkWell(
                         //highlightColor: Colors.amber,
                         child:ListTile(
                           //trailing: PopupMenuButton<CheckedValue>,
                           leading: Container(child: Image(image: AssetImage('images/logo.png'),)),
                           title: Text("First Name + Second Name"),
                           subtitle: Column(
                             children: [
                               Text('there is alot of text coming from my keyboard just to check if card widget will make it '),
                               Text('second part of my very long typing just to test text widget in column'),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: [
                                   IconButton(//heart
                                     color: Colors.red,
                                     icon: Icon(Icons.favorite),
                                     onPressed: (){
                                       setState(() {
                                       });
                                     },
                                   ),
                                   IconButton(//comments
                                     color: Colors.blueGrey,
                                     icon: Icon(Icons.comment),
                                     onPressed: (){
                                       setState(() {
                                       });
                                     },
                                   ),
                                   IconButton(//more options
                                     color: Colors.green,
                                     icon: Icon(Icons.workspaces_filled),
                                     onPressed: (){
                                       setState(() {
                                       });
                                     },
                                   )
                                 ],
                               ),
                             )
                             ],
                           ),
                           //dense: true,

                           //onLongPress: () => setState(() => _selected[i] = !_selected[i]),
                           onTap: () => setState(() => print("tapped ${_list[i+1]}"),
                         ),
                       ),
                       )
                     );
                   }
                   ),
                 )
               ),
              Container(
                  decoration: BoxDecoration(//MyProfile
                      image: DecorationImage(
                        image: AssetImage('images/bg_mirror.jpg'),
                        fit: BoxFit.cover,
                      )
                  )
              ),
              Container(
                  decoration: BoxDecoration(//Settings
                      image: DecorationImage(
                        image: AssetImage('images/bg.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                child: Center(
                  child:
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: NiceButton(
                        width: 160,
                        elevation: 8.0,
                        radius: 52.0,
                        text: "Logout",
                        icon: Icons.account_box,
                        background: Colors.black54,
                        onPressed: () {
                          Get.offAll(LoginPage());
                          print("przycisk1");
                        },
                      ),
                    ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      drawer: Drawer(
       backgroundColor: Colors.blue,
       child: Column(children: [
        // common to place a drawer header here
        DrawerHeader(
         

          child: Icon(
            Icons.favorite,
            size: 48,
            )
          ),

          // home page list  tile
          ListTile(
            leading: Icon(Icons.home),
            title: Text("H O M E"),
            onTap: () {
              // pop drawer first
              Navigator.pop(context); 

              // go to home page 
              Navigator.pushNamed(context, '/homepage');
            },
          ),
          // settings page list tile
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
            onTap: (){
              Navigator.pushNamed(context, '/settingspage');
            },
          )
       ],),
      ),
      
    );
  }
}
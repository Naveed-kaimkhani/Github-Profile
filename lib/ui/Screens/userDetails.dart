import 'dart:ui';

import 'package:flutter/material.dart';
class userDetails extends StatelessWidget {
  
  const userDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          ListTile(
            leading: CircleAvatar(
              //backgroundImage: Image.network(),
            ),
            title: Text("Naveed kk",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),),
            subtitle: Text("description",style: TextStyle(color:Colors.white),),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Row(
              children: [
                Icon(Icons.person,color: Colors.white,),
                SizedBox(width: 10,),
                Text("89 followers",style: TextStyle(color:Colors.white),),
                SizedBox(width: 10,),
                Text("89 following",style: TextStyle(color:Colors.white),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:6.0),
            
            child: Text("Repositories",style: TextStyle(color: Colors.white,fontSize: 30),),
          ),

        ],
      )
    );
  }
}
import 'package:flutter/material.dart';

class user_profile{
  String? name, avatar_url,bio;
  int? followers,following;

  user_profile({
    this.name,
    this.avatar_url,
    this.bio,
    this.followers,
    this.following});

    user_profile.fromjson(Map<String,dynamic> json){
      this.name=json['name'];
      this.avatar_url=json['avatar_url'];
      this.bio=json['bio'];
      this.followers=json['followers'];
      this.following=json['following'];
    }

    
    Map<String,dynamic> tojson(){
      final Map<String,dynamic> data=new Map<String,dynamic>();
      data['name']=this.name;
      // this.avatar_url=json['avatar_url'];
      // this.bio=json['bio'];
      // this.followers=json['followers'];
      // this.following=json['following'];
     return data;
    }
    
}
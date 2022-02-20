
class user_profile{
  String name="";
  String avatar_url="";
  String bio="";
  int followers=0;
  int following=0;

  user_profile({
    required this.name,
   required this.avatar_url,
   required this.bio,
   required this.followers,
   required this.following});

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
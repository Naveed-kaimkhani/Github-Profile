import 'package:easy_github/app/data/models/repos.dart';
import 'package:easy_github/app/data/models/repos.dart';
import 'package:easy_github/app/data/models/user_profile.dart';
import 'package:easy_github/app/services.dart/GithubApi.dart';
import 'package:flutter/cupertino.dart';

class Userprovider extends ChangeNotifier{
  GithubApi _githubapi=new GithubApi();
  
  user_profile? _user;
 user_profile? get user=> _user;

  late List<repos?> _repo;
  List<repos?> get repo=> _repo;

  bool isLoading=false;
  void setLoading(bool value){
    isLoading=value;
    notifyListeners();
  }

  Future<void> getuser({String? username})async{
    setLoading(true);
    try {
      print("In try");
      final Future<user_profile?> response=_githubapi.getUserProfile(username: username);
      _user=await response;
      print("user got");
      print(_user!.name);
      setLoading(false);
    } catch (e) {
      print(e);
      setLoading(false);
    }
  }

  Future<void> getuserRepo({String? username,BuildContext? context) async{
    setLoading(true);
    try {
         //_repo=await _githubapi.getUserRepos(username: username
      final List<repos?> response=await _githubapi.getUserRepos(username: username);
      _repo=response;
    } catch (e) {
      print(e);
      setLoading(false);
    }
  }

}
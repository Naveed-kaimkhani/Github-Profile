import 'package:provider/provider.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    Future<void> FetchUserInfo() async {
      //print(_controller.text);
      await context
          .read<Userprovider>()
          .getuser(username: _controller.text); //context pass nh kya
      await context
          .read<Userprovider>()
          .getuserRepo(username: _controller.text, context: context);
      print("in fetch user info func");
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 120,
                  width: 120,
                  child: Image.network(
                      "https://icon-library.com/images/github-icon-white/github-icon-white-6.jpg")),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: _controller,
                  decoration: new InputDecoration(
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Enter Username",
                    labelStyle: TextStyle(color: Colors.white),
                    fillColor: Colors.white60,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                width: 150,
                child: ElevatedButton(
                    onPressed: () => FetchUserInfo(),
                    child: Text(
                      "Get protfile",
                      style: TextStyle(fontSize: 17),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

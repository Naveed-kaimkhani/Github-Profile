//import 'dart:html' ;
import 'dart:io' ;
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class webview extends StatefulWidget {
  const webview({ Key? key }) : super(key: key);

  @override
  _webviewState createState() => _webviewState();
}

class _webviewState extends State<webview> {
 @override
 void initState() {
   super.initState();
   print("In init");
   if(Platform.isAndroid) WebView.platform=SurfaceAndroidWebView();
 }
  @override
  Widget build(BuildContext context) {
   final repourl=ModalRoute.of(context)!.settings.arguments as String?;
    print("in build");
    return WebView(
      initialUrl: repourl,
    );
  }
}
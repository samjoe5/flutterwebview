import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      //primaryColor: Colors.blueGrey[900],
      //canvasColor: Color.fromRGBO(50, 129, 56, 90),
      //accentColor: Color.fromRGBO(50, 45, 67, 100),
      fontFamily: 'Bungee',
      primaryTextTheme: TextTheme(
        title: TextStyle(color: Colors.yellow),
      ),
    )));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: AfterSplash(),
      image: new Image.asset(
        'assets/images/icon.png',
        width: 100,
        height: 100,
      ),
      backgroundColor: Colors.blueGrey[800],
      photoSize: 100.0,
      loaderColor: Colors.yellow[300],
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
          title: Text("Crypto Signals"),
          backgroundColor: Colors.blueGrey[900],
          ),
      url: "http://crypto.slamtrade.com/",
      withJavascript: true,
      withZoom: true,
      withLocalStorage: true,
      enableAppScheme: true,
      primary: true,
      supportMultipleWindows: true,
      allowFileURLs: true,
      withLocalUrl: true,
      scrollBar: true,
      appCacheEnabled: true,
      userAgent:
          'https://accounts.google.com/signin/oauth/oauthchooseaccount?client_id=966276189940-1k54igc67tmva1i1tbodfmt3k5kf3e1i.apps.googleusercontent.com&as=bZHn1GRLkEC4_cjzG36PNg&destination=https%3A%2F%2Fslamtrade-ui.firebaseapp.com&approval_state=!ChRHRkRjRUhfeFhDZFMtM3ZQNzZychIfMDZJb0UtTWF2bE1ROEhuU1JuY2dubXFPaVNZSWpoWQ%E2%88%99AJDr988AAAAAXGPAtfiv-BKiA0Kd25fHIHc156Jb1sJX&oauthgdpr=1&xsrfsig=ChkAeAh8TyMGfEj66DNTFSmu0TeDs_vg-UHBEg5hcHByb3ZhbF9zdGF0ZRILZGVzdGluYXRpb24SBXNvYWN1Eg9vYXV0aHJpc2t5c2NvcGU&flowName=GeneralOAuthFlow',
    );
  }
}

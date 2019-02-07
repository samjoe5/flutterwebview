import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';
//import 'package:flutter/services.dart';
//import 'package:color/color.dart';
import 'package:system_shortcuts/system_shortcuts.dart';
//import 'package:web_view/pubdraw.dart';



void main() => runApp(MaterialApp(
   //SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]),
  home: MyApp(),
  debugShowCheckedModeBanner: false,
  
  theme: ThemeData(
    primaryColor:Colors.black,
    secondaryHeaderColor:Colors.red,
    fontFamily: 'Bungee',
    primaryTextTheme: TextTheme(
    title: TextStyle(
      color: Colors.yellow
      ),
  ),
)));


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("Crypto Signals"),
        actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(Icons.screen_rotation),
  onPressed: () async {
    await SystemShortcuts.orientLandscape();
  }),
   IconButton(
    
              icon: Icon(Icons.contacts, color: Colors.white),
              iconSize: 24,
  onPressed: () {
   Navigator.push(
     context,
    new MaterialPageRoute(builder:(context) => new Contact()),
   );}    
        
      )
      ]),
      
      url: "http://crypto.slamtrade.com/",
      withJavascript: true,
      withZoom: true,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Feedback'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail Address'
                )
              ),
              new TextFormField(
                obscureText: true, // Use secure text for passwords.
                decoration: new InputDecoration(
                  hintText: 'Password',
                  labelText: 'Enter your password'
                )
              ),
              new Container(
                width: screenSize.width,
                child: new RaisedButton(
                  child: new Text(
                    'Login',
                    style: new TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: () => null,
                  color: Colors.blue,
                ),
                margin: new EdgeInsets.only(
                  top: 20.0
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

class Contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ContactState();
}

class _ContactState extends State<Contact> {
@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Contact'),
        
      ),
      body: Center(
        child: Text('contact@slamtrade.com', style: TextStyle(fontSize: 24),
      )
  ));
  }
  }
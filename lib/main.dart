import 'package:flutter/material.dart';
import 'package:flutter_app/WXHomePage.dart';
import 'package:flutter_app/WXStateManagerPage.dart';
import 'package:flutter_app/container/WXConstraitBoxPage.dart';
import 'package:flutter_app/container/WXDecoratedBoxPage.dart';
import 'package:flutter_app/container/WXPaddingPage.dart';

//foundation
import 'package:flutter_app/foundation/WXButtonPage.dart';
import 'package:flutter_app/foundation/WXCheckBoxPage.dart';
import 'package:flutter_app/foundation/WXFormPage.dart';
import 'package:flutter_app/foundation/WXIconPage.dart';
import 'package:flutter_app/foundation/WXProgressPage.dart';
import 'package:flutter_app/foundation/WXRadioPage.dart';
import 'package:flutter_app/foundation/WXSwitchPage.dart';
import 'package:flutter_app/foundation/WXTextViewPage.dart';
import 'package:flutter_app/foundation/WXInputFieldPage.dart';

//layout


//container



void main(){
    return runApp(WXApplication());
}

class WXApplication extends StatefulWidget {
  // This widget is the root of your application.
  WXApplication({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _WXApplicationState();
  }

}

class _WXApplicationState extends State<WXApplication>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    MaterialApp app = new MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      initialRoute: '/',
      routes: <String,WidgetBuilder>{
        '/':(context) => WXHomePage(),
        //foundation
        '/stateManager':(context) => WXStateMangerPage(),
        '/textView':(context) => WXTextViewPage(),
        '/buttonPage':(context) => WXButtonPage(),
        '/checkBoxPage':(context) => WXCheckBoxPage(),
        '/iconPage':(context) => WXIconPage(),
        '/radioPage':(context) => WXRadioPage(),
        '/switchPage':(context) => WXSwitchPage(),
        '/inputPage':(context) => WXInputFieldPage(),
        '/formPage':(context) => WXFormPage(),
        '/progressPage':(context) => WXProgressPage(),
        //container
        '/paddingPage':(context) => WXPaddinPage(),
        '/constraitBoxPage':(context) => WXConstraitBoxPage(),
        '/decoratedPage':(context) => WXDecoratedBoxPage(),
        //layout
      },
    );
    return app;
  }
}





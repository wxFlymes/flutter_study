import 'package:flutter/material.dart';
import 'package:flutter_app/WXHomePage.dart';
import 'package:flutter_app/WXStateManagerPage.dart';
import 'package:flutter_app/WXTextViewPage.dart';


void main() => runApp(WXApplication());

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
        '/stateManager':(context) => WXStateMangerPage(),
        '/textView':(context) => WXTextViewPage()
      },
    );
    return app;
  }
}





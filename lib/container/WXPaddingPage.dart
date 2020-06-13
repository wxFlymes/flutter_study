import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WXPaddinPage extends StatefulWidget{
    @override
  _WXPadingState createState() {
    // TODO: implement createState
    return _WXPadingState();
  }
}

class _WXPadingState extends State <WXPaddinPage>{

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text('padding'),
        ),
        body: Column(
            children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Card(
                        semanticContainer: false,
                        color: Colors.orange,
                        child: RadioListTile(
                            value: 1, 
                            groupValue: 1, 
                            onChanged: (v){

                            },
                            title: Text('我是大王'),
                        ),
                    ),
                ),
            ],
        ),
    );
  }
}
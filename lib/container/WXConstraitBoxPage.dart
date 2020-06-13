import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WXConstraitBoxPage extends StatefulWidget{
    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WXConstraitBoxState();
  }
}

class _WXConstraitBoxState extends State<WXConstraitBoxPage>{
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:  AppBar(
            title: Text('constraitBox'),
        ),
        body: Column(
            children: <Widget>[
                ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: 30,
                        minWidth: double.infinity,
                        maxHeight: 40,
                        maxWidth: double.infinity
                    ),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            gradient: LinearGradient(
                                colors: [Colors.red,Colors.purple],
                            ),
                        ),
                        child: Text('111'),
                    ),
                ),
            ],
        ),
    );
  }
}
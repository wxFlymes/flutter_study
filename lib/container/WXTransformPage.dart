

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WXTransformPage extends StatefulWidget{
    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WXTransformState();
  }
}

class _WXTransformState extends State<WXTransformPage>{


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
            title: Text('transform'),
            centerTitle: true,
        ),
        body: Column(
            children: <Widget>[
                Spacer(),
                DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                            style: BorderStyle.solid
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                    ),
                    child: Transform(
                        alignment: Alignment.topRight,
                        transform: Matrix4.skewY(0.3),
                        child: Text('hello world'),
                    ),
                ),
            ],
        ),
    );
  }
}
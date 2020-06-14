

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WXContainerPage extends StatefulWidget{
    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WXContainerState();
  }
}


class _WXContainerState extends State<WXContainerPage>{
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
            title: Text('container'),
            centerTitle: true,
        ),
        body: Column(
            children: <Widget>[
                Container(
                    color: Colors.purple,
                    width: 120,
                    height: 60,
                ),
            ],
        ),
    );
  }
}
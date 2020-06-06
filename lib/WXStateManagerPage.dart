import 'package:flutter/material.dart';

class WXStateMangerPage extends StatefulWidget{

  WXStateMangerPage({Key key}):super(key: key);

  @override
  _WXStateManagerState createState() {
    // TODO: implement createState
    return _WXStateManagerState();
  }
}
class _WXStateManagerState extends State<WXStateMangerPage>{
  bool _active = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void clickAction(){
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('状态管理'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.greenAccent,
              child: new GestureDetector(
                onTap: clickAction,
                child: new Container(
                  child: new Text(
                    _active?'Active':'Inactive',
                    style: new TextStyle(fontSize: 32,color: Colors.white),
                  ),
                  width: 200,
                  height: 150,
                  decoration: new BoxDecoration(
                    color: _active?Colors.lightGreen[700]:Colors.grey[600]
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black12,
            ),
          )
        ],
      ),
    );
  }
}
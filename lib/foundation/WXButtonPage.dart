import 'package:flutter/material.dart';


class WXNetStudyPage extends StatefulWidget{

  // WXNetStudyPage({Key key}){
  //   super(key:key);
  // }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WXNetPageState();
  }
}

class WXNetPageState extends State<WXNetStudyPage>{

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
        title: Text('网络'),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
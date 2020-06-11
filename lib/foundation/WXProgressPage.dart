import 'package:flutter/material.dart';

class WXProgressPage extends StatefulWidget {
    @override
  WXProgressState createState() {
    // TODO: implement createState
    return WXProgressState();
  }
}


class WXProgressState extends State<WXProgressPage>{
    double lineValue = 0;

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
            title: Text('进度条'),
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
                children: <Widget>[
                    LinearProgressIndicator(
                        value: lineValue,
                        backgroundColor: Colors.grey,
                        valueColor: AlwaysStoppedAnimation(Colors.red),
                    ),
                    RaisedButton(
                        child: Text('前进'),
                        onPressed: (){
                            setState(() {
                                lineValue += 0.1;
                            });
                        }
                    ),
                ],
            ),
        ),
        
    );
  }
}
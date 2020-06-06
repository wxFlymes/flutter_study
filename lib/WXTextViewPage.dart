import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class WXTextViewPage extends StatelessWidget{

  final TapGestureRecognizer tapGestureRecognizer = new TapGestureRecognizer();

  void click(){
    print('dianwo');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('文本'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 10.0
        ),
        child: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 40.0
              ),
              child: Center(
                child: Text('我是文本',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    backgroundColor: Colors.grey
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 60,
              child: Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: '我是富文本'
                  ),
                  TextSpan(
                    text: 'https://www.baidu.com',
                    style: TextStyle(
                      color: Colors.lightBlueAccent
                    ),
                    recognizer:tapGestureRecognizer
                      ..onTap = click
                  )
                ]
              )),
            )
          ],
        ),
      ),
    );
  }
}




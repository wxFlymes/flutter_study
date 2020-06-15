import 'package:flutter/material.dart';

class WXButtonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WXButtonPageState();
  }
}

class WXButtonPageState extends State<WXButtonPage> {
  VoidCallback pressState = null;
  void pressAction() {
    setState(() {
      pressState = null;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pressState = pressAction;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return NotificationListener(
        onNotification:(notification){
            debugPrint('收到通知');
            debugPrint(notification.toString());
            return true;
        },
      child: Scaffold(
        appBar: AppBar(
          title: Text('button'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            RawMaterialButton(
              onPressed: pressState,
              fillColor: Colors.pink,
              child: Text('RawMaterialButton'),
              padding: EdgeInsets.fromLTRB(20, 5, 20, 40),
              constraints: BoxConstraints(
                minWidth: double.infinity,
                maxWidth: double.infinity,
                //minHeight: 36,
                //maxHeight: 36,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  side: BorderSide(
                    color: Colors.blue,
                    width: 1.0,
                    style: BorderStyle.solid,
                  )),
              clipBehavior: Clip.hardEdge,
            ),
            MaterialButton(
              color: Colors.yellow,
              disabledColor: Colors.grey,
              onPressed: pressState,
            ),
            FlatButton(
              onPressed: () {
                print('flatbutton');
                Navigator.pushNamed(context, '/radioPage');
              },
              child: Text('flatButton'),
            ),
            RaisedButton(
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),
            OutlineButton(
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

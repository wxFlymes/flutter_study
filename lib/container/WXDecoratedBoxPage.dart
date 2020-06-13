import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WXDecoratedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WXDecoratedState();
  }
}

class _WXDecoratedState extends State<WXDecoratedBoxPage> {
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
        automaticallyImplyLeading: true,
        title: Text('decorated'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                    color: Colors.yellow, width: 3.0, style: BorderStyle.solid),
                // RoundedRectangleBorder(
                //     side: BorderSide(
                //         color: Colors.yellow,
                //         width: 3.0,
                //         style: BorderStyle.solid
                //     ),
                //     borderRadius: BorderRadius.circular(5)
                // ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            child: SizedBox(
              width: 90,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}

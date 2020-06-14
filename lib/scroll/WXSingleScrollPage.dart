


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WXSingleScrollPage extends StatefulWidget {
    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WXSingleScrollState();
  }
}



class _WXSingleScrollState extends State<WXSingleScrollPage>{
    var elem = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
      //Color
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text('single'),
            centerTitle: true,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Column(
                children: elem.split("")
                    .map((e){
                        
                            return ConstrainedBox(
                                constraints: BoxConstraints(
                                    minWidth: double.infinity,
                                    minHeight: 50,
                                ),
                                child: Center(
                                    child: Text(e),
                                )
                            );
                        }
                    )
                    .toList(),
            ),
        ),
    );
  }
}




import 'package:flutter/material.dart';

class WXCheckBoxPage extends StatefulWidget {

    @override
    State<StatefulWidget> createState() {
    // TODO: implement createState
        return WXCheckBoxPageState();
    }
}

class WXCheckBoxPageState extends State<WXCheckBoxPage>{

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
            title: Text('复选框'),
        ),
        body: Column(
            children: <Widget>[
                CheckboxListTile(
                    value: true, 
                    onChanged: (value){

                    },
                ),
                Checkbox(
                    value: false, 
                    onChanged: (value){
                        
                    }
                )
            ],
        ),
    );
  }
    
}
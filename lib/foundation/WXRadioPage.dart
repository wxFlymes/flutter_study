
import 'package:flutter/material.dart';

class WXRadioPage extends StatefulWidget {

    //Card 实现卡片效果，可以带一个子widget
    //ListTile
    //RadioListTile 相当于 Radio + title + ListTile,但是点击响应上有区别
    
    @override
    State<StatefulWidget> createState() {
    // TODO: implement createState
        return WXRadioPageState();
    }
}

class WXRadioPageState extends State<WXRadioPage>{
    int gener = 0;
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
                title: Center(
                    child: Text('单选框'),
                ),
            ),
            body: Column(
                children: <Widget>[
                    ListTile(
                        leading: Radio(
                            value: 0, 
                            groupValue: gener, 
                            onChanged: (value){
                                setState(() {
                                  gener = 0;
                                });
                            }
                        ),
                        title: Text('男'),
                        onTap: (){

                        },
                    ),
                    ListTile(
                        leading: Radio(
                            value: 1, 
                            groupValue: gener, 
                            onChanged: (value){
                                setState(() {
                                  gener = 1;
                                });
                            },
                        ),
                        title: Text('女'),
                    ),
                    RadioListTile(
                        value: 2, 
                        groupValue: gener, 
                        onChanged: (value){
                            setState(() {
                              gener = 2;
                            });
                        },
                        title: Text('未知'),
                    ),
                    
                    
                ],
            ),
        );
    }
}
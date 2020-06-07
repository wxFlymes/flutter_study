import 'dart:ui';

import 'package:flutter/material.dart';

class WXTextViewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text('文本'),
            ),
        ),
        body: Column(
            children: <Widget>[
                Text('我是文本减肥很简单tyyuyyuy是还飞机快点回家撒看黄金上课后房间卡还飞机上看哈健康是的房间卡黄金大神可否还打飞机开始的哈尽快',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.red,
                        backgroundColor: Colors.blue,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic, 
                    ),
                ),
                Text('我是文本减肥很简单tyyuyyuy是还飞机快点回家撒看黄金上课后房间卡还飞机上看哈健康是的房间卡黄金大神可否还打飞机开始的哈尽快',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        foreground: Paint()
                                        ..color=Colors.redAccent
                                        ..strokeWidth=2.0
                                        ..strokeCap=StrokeCap.round
                                        ..strokeJoin=StrokeJoin.bevel,
                        background: Paint()
                                        ..color=Colors.green
                                        ..strokeWidth=3.0
                                        ..strokeCap=StrokeCap.square
                                        ..strokeJoin=StrokeJoin.miter,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic, 
                    ),
                ),
                Text.rich(
                    TextSpan(
                        text: '我们在进样式的Widget',
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            backgroundColor: Colors.blue[200]
                        ),
                        children: <InlineSpan>[
                        TextSpan(
                            text: '120',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 30,
                                backgroundColor: Colors.blue[200]
                            )
                        )
                    ],
                    ),
                ),
                RichText(
                    text: TextSpan(
                        text: '我们在进行开发的时候经常会遇到一段文本',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                        ),
                        children: <InlineSpan>[
                            TextSpan(
                                text: 'Flutter',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 22,
                                    fontStyle: FontStyle.normal,
                                )
                            )
                        ]
                    ),
                ),
            ],
        )
        
    );
  }
}




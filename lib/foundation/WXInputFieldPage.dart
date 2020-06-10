import 'package:flutter/material.dart';

class WXInputFieldPage extends StatefulWidget {
    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WXInputFieldState();
  }
}

class WXInputFieldState extends State<WXInputFieldPage> {
    String userName = '';
    FocusNode node1 = FocusNode();
    FocusNode node2 = FocusNode();
    FocusScopeNode scopeNode;
    TextEditingController textController = TextEditingController();
    
    @override
  void initState() {
    // TODO: implement initState
    
    textController.addListener((){
        print('text -> ${textController.text}');
        print('value -> ${textController.value.text}');
        print('value -> ${textController.value}');
    });
    super.initState();
    

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text('输入框'),
        ),
        body: Column(
            children: <Widget>[
                TextField(
                    autofocus: true,
                    focusNode: node1,
                    decoration: InputDecoration(
                        labelText: '用户名',
                        focusColor: Colors.purple,
                    ),
                    onChanged: (v){
                        print('value -> $v');
                    },
                    textInputAction: TextInputAction.send,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                ),
                TextField(
                    controller: textController,
                    focusNode: node2,
                    decoration: InputDecoration(
                        labelText: '密码',
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    maxLengthEnforced: true,
                ),
                RaisedButton(
                    child: Text('移动焦点'),
                    onPressed: (){
                        //判断focusscopenode是否为null,如果是，则通过context获取
                        if (null == scopeNode){
                            scopeNode = FocusScope.of(context);
                        }
                        scopeNode.requestFocus(node2);

                    },
                ),
                RaisedButton(
                    child: Text('隐藏键盘'),
                    onPressed: (){
                        node1.unfocus();
                        node2.unfocus();
                    },
                )
            ],
        ),
    );
  }
}
import 'package:flutter/material.dart';


class WXFormPage extends StatefulWidget{
    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WXFormState();
  }
}

class WXFormState extends State<WXFormPage>{
    TextEditingController unameController = TextEditingController();
    TextEditingController pwdController = TextEditingController();
    GlobalKey _formKey = GlobalKey<FormState>();
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
            title: Text('表单'),
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(8, 15, 8, 15),
            child: Form(
                key: _formKey,
                autovalidate: true,
                child: Column(
                    children: <Widget>[
                        TextFormField(
                            autofocus: true,
                            controller: unameController,
                            decoration: InputDecoration(
                                labelText: '用户名',
                                hintText: '用户名或邮箱',
                                icon: Icon(Icons.person),
                            ),
                            validator: (v){
                                return v
                                .trim()
                                .length>0?null:'用户名不能为空';
                            },
                        ),
                        TextFormField(
                            controller: pwdController,
                            decoration: InputDecoration(
                                labelText: '密码',
                                hintText: '您的登录密码',
                                icon: Icon(Icons.lock),
                            ),
                            obscureText: true,
                            validator: (v){
                                return v.trim().length>5?null:'密码不能少于6位';
                            },
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                                children: <Widget>[
                                    Expanded(
                                        child: RaisedButton(
                                            padding: EdgeInsets.all(15.0),
                                            child: Text('登录'),
                                            color: Theme.of(context).primaryColor,
                                            onPressed: (){
                                                if ((_formKey.currentState as FormState).validate()) {
                                                  debugPrint('校验成功');
                                                }
                                            }
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                )
            ),
        ),
    );
  }
}
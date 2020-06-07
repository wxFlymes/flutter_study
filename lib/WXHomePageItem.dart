
import 'package:flutter/material.dart';

class WXHomePageItemFactory {
    int _index = 0;
    BuildContext context;
    WXHomePageItemFactory({@required int index}) {
        _index = index;
    }

    Widget getPageItem() {
        Widget tmpWidget = null;
        if (_index == 0) {
            tmpWidget = ListView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                controller: ScrollController(),
                children: <Widget>[
                    RaisedButton(
                        child: Text('文本'),
                        onPressed: (){
                            debugPrint('文本');
                            Navigator.pushNamed(context, '/textView');
                        },
                    ),
                    RaisedButton(
                        child: Text('按钮'),
                        onPressed: (){
                            debugPrint('按钮');
                            Navigator.pushNamed(context, '/buttonPage');
                        },
                    ),
                    RaisedButton(
                        child: Text('image'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('单选框'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('复选框'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('输入框'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('表单'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('进度条'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                ],
            );
        } else if (_index == 1) {
            tmpWidget = ListView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                controller: ScrollController(),
                children: <Widget>[
                    RaisedButton(
                        child: Text('Flex'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('Row/Column'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('Wrap/Flow'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('Stack/Positioned'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('Align/Center'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                ],
            );
        } else if (_index == 2) {
            tmpWidget = ListView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                controller: ScrollController(),
                children: <Widget>[
                    RaisedButton(
                        child: Text('Padding'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('ConstraitBox/SizedBox'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('DecoratedBox'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('Transform'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('Container'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('Clip'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                ],
            );
        } else if (_index == 3) {
            tmpWidget = ListView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                controller: ScrollController(),
                children: <Widget>[
                    RaisedButton(
                        child: Text('拦截导航返回'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('数据共享'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('跨组件状态共享'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('颜色和主题'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('异步UI更新'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                    RaisedButton(
                        child: Text('对话框详解'),
                        onPressed: (){
                            debugPrint('');
                        },
                    ),
                ],
            );
        } else {
            print('the index out of range!');
        }
        return tmpWidget;
    }
}

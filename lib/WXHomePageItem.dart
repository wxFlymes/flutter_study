
import 'package:flutter/material.dart';

class WXHomePageItemFactory {
    int index = 0;
    BuildContext context;
    WXHomePageItemFactory({@required int index}) {
        index = index;
    }

    Widget getPageItem() {
        Widget tmpWidget = null;
        if (index == 0) {
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
                            Navigator.pushNamed(context, '/radioPage');
                        },
                    ),
                    RaisedButton(
                        child: Text('复选框'),
                        onPressed: (){
                            debugPrint('');
                            Navigator.pushNamed(context, '/checkBoxPage');
                        },
                    ),
                    RaisedButton(
                        child: Text('输入框'),
                        onPressed: (){
                            debugPrint('');
                            Navigator.pushNamed(context, '/inputPage');
                        },
                    ),
                    RaisedButton(
                        child: Text('表单'),
                        onPressed: (){
                            debugPrint('');
                            Navigator.pushNamed(context, '/formPage');
                        },
                    ),
                    RaisedButton(
                        child: Text('进度条'),
                        onPressed: (){
                            debugPrint('');
                            Navigator.pushNamed(context, '/progressPage');
                        },
                    ),
                ],
            );
        } else if (index == 1) {
            tmpWidget = ListView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                controller: ScrollController(),
                children: <Widget>[
                    RaisedButton(
                        child: Text('Padding'),
                        onPressed: (){
                            debugPrint('');
                            Navigator.pushNamed(context, '/paddingPage');
                        },
                    ),
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
        } else if (index == 2) {
            tmpWidget = ListView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                controller: ScrollController(),
                children: <Widget>[
                    RaisedButton(
                        child: Text('Padding'),
                        onPressed: (){
                            debugPrint('padding');
                        },
                    ),
                    RaisedButton(
                        child: Text('ConstraitBox/SizedBox'),
                        onPressed: (){
                            debugPrint('ConstraitBox');
                            Navigator.pushNamed(context, '/constraitBoxPage');
                        },
                    ),
                    RaisedButton(
                        child: Text('DecoratedBox'),
                        onPressed: (){
                            debugPrint('deccorated');
                            Navigator.pushNamed(context, '/decoratedPage');
                        },
                    ),
                    RaisedButton(
                        child: Text('Transform'),
                        onPressed: (){
                            debugPrint('');
                            Navigator.pushNamed(context, '/transformPage');
                        },
                    ),
                    RaisedButton(
                        child: Text('Container'),
                        onPressed: (){
                            debugPrint('');
                            Navigator.pushNamed(context, '/containerPage');
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
        } else if (index == 3) {
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
        } 
        else if (index == 4) {
            tmpWidget = ListView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                controller: ScrollController(),
                children: <Widget>[
                    RaisedButton(
                        child: Text('singgle'),
                        onPressed: (){
                            debugPrint('singgle');
                            //MaterialPageRoute
                            //Notification
                            Navigator.pushNamed(context, '/singleScrollPage');
                        },
                    ),
                    RaisedButton(
                        child: Text('listview'),
                        onPressed: (){
                            debugPrint('ConstraitBox');
                            
                        },
                    ),
                    RaisedButton(
                        child: Text('gridview'),
                        onPressed: (){
                            debugPrint('deccorated');
                            
                        },
                    ),
                    RaisedButton(
                        child: Text('customscroll'),
                        onPressed: (){
                            debugPrint('');
                            
                        },
                    ),
                    
                ],
            );
        }
        else {
            print('the index out of range!');
        }
        return tmpWidget;
    }
}

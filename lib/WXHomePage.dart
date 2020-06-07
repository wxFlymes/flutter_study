import 'package:flutter/material.dart';
import 'package:flutter_app/WXHomePageItem.dart';




class WXHomePage extends StatefulWidget{

    WXHomePage({Key key}):super(key:key);

    @override
    State<StatefulWidget> createState() {
        // TODO: implement createState
        return _WXHomePageState();
    }
}

class _WXHomePageState extends State<WXHomePage>{

    int _currentIndex = null;
    WXHomePageItemFactory fac = null;
    Widget _body = null;


    void _selectAction(int index){
        setState(() {
            _currentIndex = index;
            _body = fac.getPageItem();
        });
    }

    @override
    void initState() {
        // TODO: implement initState
        super.initState();
        _currentIndex = 0;
        fac = WXHomePageItemFactory(index: _currentIndex);
        _body = fac.getPageItem();
    }

    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        fac.context = context;
        return Scaffold(
            appBar: AppBar(
                title: Center(
                    child: Text('首页'),
                ),
            ),
            body: _body,
            bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home,
                            color: Colors.blue,
                        ),
                        title: Text('基础',
                            style: TextStyle(
                                color: Colors.blue,
                            ),
                        ),
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.business,
                            color: Colors.blue,
                        ),
                        title: Text('布局',
                            style: TextStyle(
                                color: Colors.blue,
                            ),
                        )
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.school,
                            color: Colors.blue,
                        ),
                        title: Text('容器',
                            style: TextStyle(
                                color: Colors.blue,
                            ),
                        )
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.access_time,
                            color: Colors.blue,
                        ),
                        title: Text('功能',
                            style: TextStyle(
                                color: Colors.blue,
                            ),
                        )
                    ),
                ],
                type: BottomNavigationBarType.fixed,
                currentIndex: _currentIndex,
                onTap: _selectAction
            ),

        );
    }
}
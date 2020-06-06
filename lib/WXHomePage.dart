import 'package:flutter/material.dart';
import 'package:flutter_app/WXIcons.dart';



class WXHomePage extends StatefulWidget{

  WXHomePage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WXHomePageState();
  }
}

class _WXHomePageState extends State<WXHomePage>{

  int _currentIndex = 0;


  void _selectAction(int index){
    setState(() {
      _currentIndex = index;
    });
  }

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
          child: Text('首页'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 30,
            child: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/stateManager');
              },
              child: Text('状态管理'),
              color: Colors.lightGreen,
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: 1,
            child: RaisedButton(
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/textView');
              },
              child: Text('文本组件'),
            ),
          ),
          RaisedButton.icon(
              onPressed: (){
                print('点赞');
              },
              icon: Icon(Icons.thumb_up),
              label: Text('赞')
          ),
          Icon(WXIcons.wxAll),
          Icon(WXIcons.qrCode),
          Icon(WXIcons.favor)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Business')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('Scholl')
          )
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber,
        onTap: _selectAction
      ),

    );
  }
}
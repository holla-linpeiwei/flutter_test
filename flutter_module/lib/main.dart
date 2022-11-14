import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_module/views/empty/empty_page.dart';

void main() => runApp( MyAppRoot());

class MyAppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      //initialRoute: '/',     //初始化的时候加载的路由
      // onGenerateRoute: onGenerateRoute,
      // navigatorKey: navigatorKey,
      // navigatorObservers: [
      //   navigationObserver,
      // ],
    );
  }
}


class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 控制组件显示哪个Widget
  final Map<String, Widget> _widgetList = {
    'empty_page': EmptyPage()
  };
  String _pageName =
      'empty_page'; //接入移动端需要换成login_default flutter运行需要使用其他值
  // 监听页面显示&返回信息
  static const _widgetChannel = MethodChannel('com.voya.methodChannel');
  // 向移动端传递页面操作信息&接收网络参数
  static const _messageChannel = const BasicMessageChannel(
      'flutter_voya_basicchannel', StandardMessageCodec());

  @override
  void initState() {
    super.initState();
    initData();
  }

  void initData() async {
    receiveMessage();

  }

  @override
  Widget build(BuildContext context) {
    return  EmptyPage();
  }

  // 监听原生端主动发送的消息
  void receiveMessage() {
    _messageChannel.setMessageHandler((result) async {
      print("收到 BasicMessageChannel 消息2123：" + result.toString());



      return 'Flutter 已收到消息 ：${result}';
    });

    // _widgetChannel.setMethodCallHandler((call) {
    //   print("widgetChannel收到" + call.method);
    //
    // });
  }
}

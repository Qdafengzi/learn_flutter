
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/theme/light_theme.dart';
import 'package:learn_flutter/ui/home/Widgets.dart';
import 'package:learn_flutter/ui/home/other.dart';
import 'package:learn_flutter/ui/home/projects.dart';

import 'constant/HomeCos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.red,//状态栏颜色
        statusBarIconBrightness: Brightness.dark, //状态栏图标颜色
        statusBarBrightness: Brightness.dark,  //状态栏亮度
        systemStatusBarContrastEnforced: true, //系统状态栏对比度强制
        systemNavigationBarColor: Colors.white, //导航栏颜色
        systemNavigationBarIconBrightness: Brightness.dark,//导航栏图标颜色
        systemNavigationBarDividerColor: Colors.white60,//系统导航栏分隔线颜色
        systemNavigationBarContrastEnforced: true,//系统导航栏对比度强制
      ),
      child: MaterialApp(
        title: 'Bottom Navigation',
        home: const MainPage(),
        theme: lightTheme,
        // darkTheme: darkTheme,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
   List<Widget> _children = [];

 @override
  void initState() {
    super.initState();
    _children..add(Widgets(context))..add(Other(context))..add(Projects(context));
  }

  final List<BottomNavigationBarItem> _list = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: HomeCos.WIDGET,
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.animation),
      label: HomeCos.OTHER,
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.pages),
      label: HomeCos.PROJECT,
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: _list,
        selectedItemColor: const Color(0xff333333),
        unselectedItemColor: const Color(0xae8c8989),
        backgroundColor: Theme.of(context).secondaryHeaderColor,

        unselectedFontSize: 20,
        selectedFontSize: 23,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w300),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),

      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
    );
  }
}

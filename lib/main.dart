
import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Bottom Navigation',
      home: const MainPage(),
      theme: ThemeData(primaryColor: Colors.orange),
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
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.green[400],
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

import 'dart:math';

import 'package:flutter/material.dart';

class TabsWidget extends StatefulWidget {
  const TabsWidget({super.key, required this.title});

  final String title;

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  final List<Tab> myTabs = const <Tab>[
    Tab(text: '孙悟空'),
    Tab(text: '皇子'),
    Tab(text: '盖伦'),
    Tab(text: '剑圣'),
    Tab(text: '塞纳'),
    Tab(text: '女警'),
    Tab(text: '火男'),
    Tab(text: '寒冰射手'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: TabBar(
            tabs: myTabs,
            isScrollable: true,
            indicatorColor: Colors.pink,
            labelColor: Colors.cyan,
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: NestedTabBar("Java"),
            ),
            Center(
              child: NestedTabBar("Dart"),
            ),
            Center(
              child: NestedTabBar("Kotlin"),
            ),
          ],
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Tabs1'),
            Tab(text: 'Tabs2'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('${widget.outerTab}: 666')),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('${widget.outerTab}: 3333')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

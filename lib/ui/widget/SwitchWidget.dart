import 'dart:math';

import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key, required this.title});

  final String title;

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  var state = false;

  @override
  Widget build(BuildContext context) {
    var random = Random();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Switch(
                activeTrackColor: Colors.blueAccent,
                activeColor: Colors.deepPurpleAccent,
                inactiveTrackColor: Colors.grey,
                value: state,
                onChanged: (value) {
                  setState(() {
                    state = value;
                  });
                }),
            Switch(
                value: state,
                onChanged: (value) {
                  setState(() {
                    state = value;
                  });
                }),
            Switch(
                value: state,
                onChanged: (value) {
                  setState(() {
                    state = value;
                  });
                }),
            SwitchListTile(
              value: state,
              onChanged: (value) {
                setState(() {
                  state = value;
                });
              },

              // 选中时 滑块的颜色
              activeColor: Colors.red,
              // 选中时 滑道的颜色
              activeTrackColor: Colors.black,
              // 选中时 滑块的图片
//              activeThumbImage: AssetImage("images/hashiqi.jpg"),
              // 未选中时 滑块的颜色
              inactiveThumbColor: Colors.green,
              // 未选中时 滑道的颜色
              inactiveTrackColor: Colors.amberAccent,
              // 未选中时 滑块的颜色
              // inactiveThumbImage: const AssetImage("images/ic_flutter.png"),
              // 标题
              title: const Text("标题"),
              // 副标题 在标题下面的
//              subtitle: Text("副标题"),
              // 是不是三行， true 时： subtitle 不能为null， false时可以为 null
//              isThreeLine: true,
              // 如果为 true ，则 text 和 icon 都用 activeColor 时的color
//              selected: true,
              // 是否垂直密集居中
              dense: true,
              // 左边的一个东西
              secondary: const Icon(Icons.access_time),
            ),
          ],
        ));
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key, required this.title});

  final String title;

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  late String groupValue;
  late String valueLiu;
  late String valueZhang;
  late String valueGuo;
  late String valueLi;

  @override
  void initState() {
    super.initState();
    groupValue = "Flutter";
    valueLiu = "Java";
    valueZhang = "C++";
    valueGuo = "Kotlin";
    valueLi = "Dart";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              Text("选中:$groupValue"),
              Radio<String>(
                // 此 Radio 的 value 值
                value: valueLiu,
                // 当选择此 radio 的时候 的回调。 参数就是 此 value 的值
                onChanged: (value) {
                  setState(() {
                    groupValue = value.toString();
                  });
                },
                // 如果 Radio 的 value 和 groupValue 一样 就 是此 Radio 选中 其他 设置为 不选中
                groupValue: groupValue,
                // 选中的颜色
                activeColor: Colors.blueAccent,
                // 响应手势的大小 ， 默认是 48 * 48
                // MaterialTapTargetSize.shrinkWrap 水波纹 在中间
                // MaterialTapTargetSize.padded  水波纹 靠左上
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Radio(
                value: valueZhang,
                onChanged: (value) {
                  setState(() {
                    groupValue = value.toString();
                  });
                },
                groupValue: groupValue,
                activeColor: Colors.blueAccent,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Radio<String>(
                value: valueGuo,
                onChanged: (value) {
                  setState(() {
                    groupValue = value.toString();
                  });
                },
                groupValue: groupValue,
                activeColor: Colors.blueAccent,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Radio<String>(
                value: valueLi,
                onChanged: (value) {
                  setState(() {
                    groupValue = value.toString();
                  });
                },
                groupValue: groupValue,
                activeColor: Colors.blueAccent,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),

              const SizedBox(
                height: 40,
              ),
              const Text(
                "Two",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              // 不知道 为什么 Row 父布局 不行（暂时不知道why）
              Column(
//          mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RadioListTile<String>(
                    title: Text(valueLiu),
                    value: valueLiu,
                    groupValue: groupValue,
                    onChanged: _changed,
                    activeColor: Colors.red,
                    subtitle: const Text("副标题"),
                    isThreeLine: false,
                    dense: false,
                    selected: true,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  RadioListTile<String>(
                      title: Text(valueZhang),
                      value: valueZhang,
                      groupValue: groupValue,
                      onChanged: _changed),
                  RadioListTile<String>(
                      title: Text(valueGuo),
                      value: valueGuo,
                      groupValue: groupValue,
                      onChanged: _changed),
                  RadioListTile<String>(
                      title: Text(valueLi),
                      value: valueLi,
                      groupValue: groupValue,
                      onChanged: _changed),
                ],
              )
            ],
          ),
        ));
  }

  void _changed(value) {
    groupValue = value;
    setState(() {});
  }
}

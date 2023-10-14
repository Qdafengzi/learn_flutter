import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key, required this.title});

  final String title;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

enum Calendar { day, week, month, year }

class _ButtonWidgetState extends State<ButtonWidget> {

  @override
  Widget build(BuildContext context) {
    Calendar calendarView = Calendar.day;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {

              },
              icon: const Icon(Icons.add),
              iconSize: 30,
            ),
            BackButton(
              color: Colors.green,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CloseButton(
              color: Colors.green,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            DrawerButton(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            DropdownButton<String>(
              hint: const Text('请选择'),
              value: 'A',
              items: const [
                DropdownMenuItem<String>(value: 'A', child: Text('选项 A')),
                DropdownMenuItem<String>(value: 'B', child: Text('选项 B')),
                DropdownMenuItem<String>(value: 'C', child: Text('选项 C')),
              ],
              onChanged: (value) {

              }, // 选项更改时调用此函数
            ),
            ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  surfaceTintColor: Colors.red,
                  shadowColor: Colors.brown,
                  backgroundColor: Colors.blueAccent,
                  // 渐变背景色
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // 圆角
                  ),
                  elevation: 5,
                ),
                child: const SizedBox(
                  child: Text(
                    'ElevatedButton',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            FilledButton(onPressed: () {}, child: const Text('FilledButton')),
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            MaterialButton(
              onPressed: () {},
              child: const Text('MaterialButton'),
            ),
            OutlinedButton(
                onPressed: () {}, child: const Text('OutlinedButton')),
            SegmentedButton<Calendar>(
              segments: const <ButtonSegment<Calendar>>[
                ButtonSegment<Calendar>(
                    value: Calendar.day,
                    label: Text('Day'),
                    icon: Icon(Icons.calendar_view_day)),
                ButtonSegment<Calendar>(
                    value: Calendar.week,
                    label: Text('Week'),
                    icon: Icon(Icons.calendar_view_week)),
                ButtonSegment<Calendar>(
                    value: Calendar.month,
                    label: Text('Month'),
                    icon: Icon(Icons.calendar_view_month)),
                ButtonSegment<Calendar>(
                    value: Calendar.year,
                    label: Text('Year'),
                    icon: Icon(Icons.calendar_today)),
              ],
              selected: <Calendar>{calendarView},
              onSelectionChanged: (Set<Calendar> newSelection) {
                setState(() {
                  calendarView = newSelection.first;
                });
              },
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            )
          ],
        ));
  }
}

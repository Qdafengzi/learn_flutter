import 'package:flutter/material.dart';

class WidgetsListItem extends StatefulWidget {
  const WidgetsListItem({super.key, required this.title});

  final String title;

  @override
  State<WidgetsListItem> createState() => _WidgetsListItemState();
}

class _WidgetsListItemState extends State<WidgetsListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        // height: 50,
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          widget.title,
          style:const TextStyle(
              color: Color(0xFF333333),
              // color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
          ),
        ));
  }
}

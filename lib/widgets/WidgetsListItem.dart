import 'package:flutter/material.dart';

class FListItem extends StatefulWidget {
  const FListItem({super.key, required this.title});

  final String title;

  @override
  State<FListItem> createState() => _FListItemState();
}

class _FListItemState extends State<FListItem> {
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

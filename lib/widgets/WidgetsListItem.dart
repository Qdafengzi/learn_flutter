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
      padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
      margin: const EdgeInsets.fromLTRB(12, 4, 12, 4),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(4))
      ),
      child: Text(
        widget.title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

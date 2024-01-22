import 'package:flutter/material.dart';

class KCustomTextTile extends StatelessWidget {
  final String taskName;
  final bool ischecked;
  final void Function(bool?) toggleCallback;
  final void Function() deleteOnLongpres;

  const KCustomTextTile({
    super.key,
    required this.taskName,
    required this.toggleCallback,
    required this.deleteOnLongpres,
    required this.ischecked,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: ListTile(
          onLongPress: deleteOnLongpres,
          title: Text(
            taskName,
            style: TextStyle(
              decoration: ischecked ? TextDecoration.lineThrough : null,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 3,
            ),
          ),
          trailing: Checkbox(
            value: ischecked,
            onChanged: toggleCallback,
          )),
    );
  }
}

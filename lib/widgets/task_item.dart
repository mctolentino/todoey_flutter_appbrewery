import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function deleteCallback;

  TaskItem({this.isChecked, this.taskTitle, this.checkboxCallback, this.deleteCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(taskTitle,
            style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null)),
        trailing: Checkbox(
            activeColor: Colors.lightBlueAccent, value: isChecked, onChanged: checkboxCallback),
        onLongPress: deleteCallback);
  }
}

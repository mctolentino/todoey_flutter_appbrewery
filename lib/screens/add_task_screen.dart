import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/taskListData.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen();

  @override
  Widget build(BuildContext context) {
    String taskTitle;
    var taskTitleController = TextEditingController();

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskTitle = value;
              },
              controller: taskTitleController,
            ),
            FlatButton(
              child: Text('Add', style: TextStyle(color: Colors.white)),
              color: Colors.lightBlueAccent,
              onPressed: () {
                if (taskTitle.isNotEmpty) {
                  Provider.of<TaskListData>(context, listen: false).addTask(taskTitle);
                  taskTitleController.clear();
                  Navigator.pop(context);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

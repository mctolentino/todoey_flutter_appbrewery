import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/taskListData.dart';
import 'package:todoeyflutter/widgets/task_item.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListData>(builder: (context, taskListData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskListData.getTask(index);
          return TaskItem(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
              taskListData.toggleTaskDone(task);
            },
            deleteCallback: () {
              taskListData.deleteTask(task);
            },
          );
        },
        itemCount: taskListData.taskCount,
      );
    });
  }
}

import 'package:flutter/widgets.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskListData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Eggs', isDone: true)
  ];

  int get taskCount => _tasks.length;

  Task getTask(int index) {
    return _tasks[index];
  }

  void addTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void toggleTaskDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

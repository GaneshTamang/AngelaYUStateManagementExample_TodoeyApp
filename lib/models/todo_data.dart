import 'package:angela_simple_to_do_app_state_management/models/task_model.dart';
import 'package:flutter/material.dart';

//here change notifier is a mix in method with change notidier
class TaskData extends ChangeNotifier {
  //making private so it can be accesed privately

  final List<Task> _taskList = [
    // Task(name: 'milk'),
    // Task(name: 'coffee'),
    // Task(name: 'bread'),
  ];

  // getter method for private

  List get addedTaskList => _taskList;
  int get taskLength => _taskList.length;

  //setmethod

  addlist(Task toAdd) {
    _taskList.add(toAdd);

    notifyListeners();
  }

  removeTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }

  toggleupadate(Task task) {
    task.toggleCheck();
    notifyListeners();
  }
}

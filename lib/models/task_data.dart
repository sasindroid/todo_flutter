import 'package:flutter/foundation.dart';
import 'package:todo_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy fruits"),
    Task(name: "Buy egg"),
  ];

  void addTask(Task task) {
    tasks.add(task);
  }
}

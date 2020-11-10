import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return Center(
            child: TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              toggleCheckboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              deleteTaskCallback: () => taskData.deleteTask(task),
            ),
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}

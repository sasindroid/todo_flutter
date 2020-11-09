import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Center(
        child: TaskTile(
            taskTitle: context.watch<TaskData>().tasks[index].name,
            isChecked: context.watch<TaskData>().tasks[index].isDone,
            toggleCheckboxCallback: (checkboxState) {
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            }),
      ),
      itemCount: context.watch<TaskData>().tasks.length,
    );
  }
}

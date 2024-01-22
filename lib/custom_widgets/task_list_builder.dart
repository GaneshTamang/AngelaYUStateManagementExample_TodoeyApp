import 'package:angela_simple_to_do_app_state_management/custom_widgets/custom_list_tile.dart';
import 'package:angela_simple_to_do_app_state_management/models/task_model.dart';
import 'package:angela_simple_to_do_app_state_management/models/todo_data.dart';
import 'package:angela_simple_to_do_app_state_management/screens/alert_delete_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskListBuilder extends StatelessWidget {
  const TaskListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      // here consumer<T>( builder(context, T value,child windget){
      // where T value works and coonsumes with provider  of type T
      // },)
      child: Consumer<TaskData>(
        builder: (context, currentTaskData, child) {
          return currentTaskData.addedTaskList.isEmpty
              ? const Center(child: Text('No Task Added'))
              : ListView.builder(
                  itemBuilder: (context, index) {
                    final Task currentTask =
                        currentTaskData.addedTaskList[index];

                    return KCustomTextTile(
                      taskName: currentTask.name!,
                      //(_) whateever type of object comes is ignored
                      toggleCallback: (_) {
                        currentTaskData.toggleupadate(currentTask);
                      },
                      deleteOnLongpres: () {
                        // currentTaskData.removeTask(currentTask);
                        //run Function onpress
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDeletePage(
                                task: currentTask,
                              );
                            });
                      },
                      ischecked: currentTask.isDone,
                    );
                  },
                  itemCount: currentTaskData.taskLength,
                );
        },
      ),
    );
  }
}

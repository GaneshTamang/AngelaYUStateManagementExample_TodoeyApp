import 'package:angela_simple_to_do_app_state_management/custom_widgets/task_list_builder.dart';
import 'package:angela_simple_to_do_app_state_management/k_constants.dart';
import 'package:angela_simple_to_do_app_state_management/models/todo_data.dart';
import 'package:angela_simple_to_do_app_state_management/screens/add_task_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoMainHomePage extends StatelessWidget {
  const TodoMainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 18, left: 50, bottom: 20),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: Icon(
                Icons.list,
                size: 80,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              'TaskList',
              style: KConstants().kCustomTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, bottom: 15),
            child: Text(
              '${Provider.of<TaskData>(context).addedTaskList.length} tasks',
              style: KConstants().kCustomTextStyle,
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: const TaskListBuilder(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: const Color(0x00222222),
            context: context,
            builder: (context) {
              return const AddTaskScreen();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

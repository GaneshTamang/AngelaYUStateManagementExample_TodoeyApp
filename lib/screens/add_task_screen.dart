import 'package:angela_simple_to_do_app_state_management/models/task_model.dart';
import 'package:angela_simple_to_do_app_state_management/models/todo_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    // print(_newTaskTitle);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Add Task  ',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              autofocus: true,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                context.read<TaskData>().addlist(
                      Task(name: newTaskTitle),
                    );
                Navigator.of(context).pop();
              },
              child: const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text('Add Task'),
              ))
        ],
      ),
    );
  }
}

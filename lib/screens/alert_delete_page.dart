import 'package:angela_simple_to_do_app_state_management/models/task_model.dart';
import 'package:angela_simple_to_do_app_state_management/models/todo_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlertDeletePage extends StatelessWidget {
  final Task task;
  const AlertDeletePage({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black, // Set the color of the underline
              width: 3.0, // Set the thickness of the underline
            ),
          ),
        ),
        child: const Text(
          'DELETE???',
          textAlign: TextAlign.center,
        ),
      ),
      content: const Text(
        'Are you sure You want to delete this task????',
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.redAccent),
            fixedSize: const MaterialStatePropertyAll(
              Size.fromWidth(100),
            ),
          ),
          onPressed: () {
            context.read<TaskData>().removeTask(task);
            Navigator.of(context).pop();
          },
          child: const Row(
            children: [
              Icon(Icons.recommend),
              SizedBox(
                width: 5,
              ),
              Text('Yes'),
            ],
          ),
        ),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.green),
            fixedSize: MaterialStatePropertyAll(
              Size.fromWidth(100),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Row(
            children: [
              Icon(Icons.delete_forever_sharp),
              SizedBox(
                width: 5,
              ),
              Text('No'),
            ],
          ),
        )
      ],
    );
  }
}

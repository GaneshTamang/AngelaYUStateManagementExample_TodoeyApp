import 'package:angela_simple_to_do_app_state_management/models/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.watch<TasksData>().getTitle),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(context.watch<TasksData>().textEditingControllerValue),
          TextField(
            controller: TextEditingController(
                text: context.watch<TasksData>().textEditingControllerValue),
            onChanged: (typedvalue) {
              // context.read<MyData>().setTExt(typedvalue);
              debugPrint(typedvalue);
            },
          ),
          Text(context.watch<TasksData>().currentTF == true ? "true" : "false"),
          Center(
            child: InkWell(
              onTap: () {
                // context.read<MyData>().setNewTitle();
                context.read<TasksData>().changeCurrentValue();
              },
              child: Container(
                height: 100,
                width: 150,
                color: Colors.amber,
                child: const Center(
                  child: Text('change New title'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

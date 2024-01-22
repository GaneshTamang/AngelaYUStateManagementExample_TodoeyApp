import 'package:angela_simple_to_do_app_state_management/models/data.dart';
import 'package:angela_simple_to_do_app_state_management/models/todo_data.dart';
import 'package:angela_simple_to_do_app_state_management/screens/todo_main_homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  //this is Lifting state up so every one access withnin  the widget tree

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => TasksData(),
      ),
      ChangeNotifierProvider(
        create: (_) => TaskData(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoMainHomePage(),
    );
  }
}

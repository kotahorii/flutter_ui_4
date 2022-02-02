import 'package:flutter/material.dart';
import 'package:flutter_ui4/CreateTask.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('タスク一覧'),
        ),
        body: ListView(
          children: [],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CreateTask()))
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

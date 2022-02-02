import 'package:flutter/material.dart';
import 'package:flutter_ui4/CreateTask.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 85,
          leading: TextButton(
            child: const Text(
              'ログアウト',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('タスク一覧'),
        ),
        body: ListView(
          children: [
            Card(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('test'),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete))
                      ],
                    )))
          ],
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

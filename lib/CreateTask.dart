import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({Key? key}) : super(key: key);

  @override
  _CreateTaskState createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  var title = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('タスク追加'),
        leadingWidth: 85,
        leading: TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(
            'キャンセル',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12.0),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: 'Enter task title'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => {Navigator.of(context).pop()},
                child: const Text('add task'))
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/extensions/build_context_extensions.dart';

import 'package:todo_app/models/todo.dart';

class DetaledTodoPage extends StatefulWidget {
  const DetaledTodoPage({Key? key}) : super(key: key);

  @override
  State<DetaledTodoPage> createState() => _DetaledTodoPageState();
}

class _DetaledTodoPageState extends State<DetaledTodoPage> {
  @override
  Widget build(BuildContext context) {
    final todo = context.arguments as Todo;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        leading: Row(
          children: [
            TextButton.icon(
              onPressed: () => Navigator.pop(context, todo),
              icon: const Icon(
                Icons.navigate_before,
                color: Colors.white,
              ),
              label: const Text(
                'Todos',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
          ],
        ),
        leadingWidth: 100,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              todo.done ? 'Done' : 'Not done',
              style: const TextStyle(
                  color: Color.fromARGB(255, 244, 2, 164),
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                todo.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(todo.description),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () => setState(() {
                    todo.done = !todo.done;
                  }),
                  child: Text(
                    todo.done ? 'MARK AS NOT DONE' : 'MARK AS DONE',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 244, 2, 164),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

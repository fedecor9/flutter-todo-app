import 'package:flutter/material.dart';

import 'package:todo_app/models/todo.dart';

class DetaledTodoPage extends StatelessWidget {
  const DetaledTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Todo;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        leading: Row(
          children: <Widget>[
            GestureDetector(
              child: const Icon(
                Icons.navigate_before,
              ),
              onTap: () => Navigator.pop(context),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Todos',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ),
        leadingWidth: 90,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                todo.done ? 'Done' : 'Not done',
                style: TextStyle(
                    color: Colors.red[400], fontWeight: FontWeight.w500),
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
            ],
          ),
        ),
      ),
    );
  }
}

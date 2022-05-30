import 'package:flutter/material.dart';
import 'package:todo_app/views/list_view_page.dart';
import 'package:todo_app/views/new_todo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewTodoPage(),
                  ),
                );
              },
              icon: const Icon(Icons.add),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            const Expanded(
              child: ListViewPage(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextButton(
                onPressed: () => {},
                child: const Text(
                  'CLEAR ALL DONE',
                  style: TextStyle(
                      color: Color.fromARGB(255, 244, 2, 164),
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

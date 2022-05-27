import 'package:flutter/material.dart';
import 'package:todo_app/views/detailed_todo_page.dart';

import '../models/todo.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final _todoList = <Todo>[
    Todo('Two-line item', 'Secondary text'),
    Todo('Two-line item', 'Secondary text'),
    Todo('Two-line item', 'Secondary text'),
    Todo('Two-line item', 'Secondary text'),
    Todo('Two-line item', 'Secondary text'),
    Todo('Two-line item', 'Secondary text'),
  ];

  void handleCheckbox(bool? newValue, int index) {
    setState(() => {_todoList[index].done = newValue!});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(_todoList[index].title),
            subtitle: const Text('Secondary text'),
            trailing: Checkbox(
              value: _todoList[index].done,
              onChanged: (bool? newValue) => handleCheckbox(newValue, index),
              checkColor: Colors.white,
              activeColor: const Color.fromARGB(255, 244, 2, 164),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DetaledTodoPage(),
                    settings: RouteSettings(arguments: _todoList[index])),
              )
            },
          );
        }),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: _todoList.length,
        shrinkWrap: true,
      ),
    );
  }
}

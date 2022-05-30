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
    Todo(title: 'Two-line item', description: 'description'),
    Todo(title: 'Two-line item', description: 'description'),
    Todo(title: 'Two-line item', description: 'description'),
  ];

  void handleCheckbox(bool? newValue, int index) => setState(
        () {
          _todoList[index].done = newValue!;
        },
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemBuilder: ((context, index) {
          if (index == _todoList.length) return const ClearDoneTodos();

          return ListTile(
            title: Text(_todoList[index].title),
            subtitle: const Text('Secondary text'),
            trailing: Checkbox(
              value: _todoList[index].done,
              onChanged: (bool? newValue) => handleCheckbox(newValue, index),
              checkColor: Colors.white,
              activeColor: const Color.fromARGB(255, 244, 2, 164),
            ),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetaledTodoPage(),
                  settings: RouteSettings(
                    arguments: _todoList[index],
                  ),
                ),
              );
              updateListTile(index, result);
            },
          );
        }),
        separatorBuilder: (BuildContext context, int index) {
          if (index == _todoList.length - 1) {
            return const Divider(
              color: Colors.transparent,
            );
          }
          return const Divider();
        },
        itemCount: _todoList.length + 1,
        shrinkWrap: true,
      ),
    );
  }

  void updateListTile(int index, result) {
    return setState(() {
      _todoList[index] = result;
    });
  }
}

class ClearDoneTodos extends StatelessWidget {
  const ClearDoneTodos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(108, 243, 243, 243),
      child: TextButton(
        onPressed: () => {},
        child: const Text(
          'CLEAR ALL DONE',
          style: TextStyle(
              color: Color.fromARGB(255, 244, 2, 164),
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

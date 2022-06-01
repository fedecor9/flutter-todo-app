import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/todolist_cubit.dart';
import 'package:todo_app/extensions/build_context_extensions.dart';

import 'package:todo_app/models/todo.dart';

class DetaledTodoPage extends StatelessWidget {
  const DetaledTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = context.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        leading: Row(
          children: [
            TextButton.icon(
              onPressed: () => Navigator.pop(context),
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
      body: BlocBuilder<TodolistCubit, List<Todo>>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  state[index].done ? 'Done' : 'Not done',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 244, 2, 164),
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    state[index].title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(state[index].description),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextButton(
                      onPressed: () {
                        BlocProvider.of<TodolistCubit>(context)
                            .updateTodo(index, !state[index].done);
                      },
                      child: Text(
                        state[index].done ? 'MARK AS NOT DONE' : 'MARK AS DONE',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 244, 2, 164),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

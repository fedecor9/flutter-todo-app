import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/todolist_cubit.dart';
import 'package:todo_app/extensions/build_context_extensions.dart';

import 'package:todo_app/cubit/todo_list_states.dart';

class DetaledTodoPage extends StatelessWidget {
  const DetaledTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = context.arguments as int;

    return Scaffold(
      backgroundColor: Colors.grey[100],
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
      body: BlocBuilder<TodolistCubit, TodoListState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnimatedCrossFade(
                  firstCurve: Curves.easeInOut,
                  secondCurve: Curves.easeIn,
                  crossFadeState: state.todos[index].done
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 300),
                  firstChild: const Text(
                    'Done',
                    style: TextStyle(
                        color: Color.fromARGB(255, 244, 2, 164),
                        fontWeight: FontWeight.w500),
                  ),
                  secondChild: const Text(
                    'Not done',
                    style: TextStyle(
                        color: Color.fromARGB(255, 244, 2, 164),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    state.todos[index].title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(state.todos[index].description),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextButton(
                      onPressed: () {
                        context
                            .cubit<TodolistCubit>()
                            .updateTodo(index, !state.todos[index].done);
                      },
                      child: AnimatedCrossFade(
                        firstCurve: Curves.easeInOut,
                        secondCurve: Curves.easeIn,
                        crossFadeState: !state.todos[index].done
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: const Duration(milliseconds: 200),
                        firstChild: const Text(
                          'MARK AS DONE',
                          style: TextStyle(
                              color: Color.fromARGB(255, 244, 2, 164),
                              fontWeight: FontWeight.w600),
                        ),
                        secondChild: const Text(
                          'MARK AS NOT DONE',
                          style: TextStyle(
                              color: Color.fromARGB(255, 244, 2, 164),
                              fontWeight: FontWeight.w600),
                        ),
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

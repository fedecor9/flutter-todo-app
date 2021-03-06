import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/todolist_cubit.dart';
import 'package:todo_app/views/detailed_todo_page.dart';

import '../cubit/todo_list_states.dart';
import '../models/todo.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TodolistCubit>(context);

    return BlocBuilder<TodolistCubit, TodoListState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: state.todos.isNotEmpty
              ? todolistTiles(state.todos, cubit)
              : emtpyTodoList(),
        );
      },
    );
  }

  Container emtpyTodoList() {
    return Container(
      color: Colors.grey[100],
      child: const Center(
        child: Text(
          "You don't have any todos",
          style: TextStyle(
            color: Color.fromARGB(255, 244, 2, 164),
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }

  ListView todolistTiles(List<Todo> state, TodolistCubit cubit) =>
      ListView.separated(
        itemBuilder: ((context, index) {
          return (index == state.length)
              ? ClearDoneTodos(
                  handleClearDone: cubit.clearDone,
                )
              : ListTile(
                  title: Text(state[index].title),
                  subtitle: Text(state[index].title),
                  trailing: Checkbox(
                    value: state[index].done,
                    onChanged: (bool? newValue) =>
                        cubit.updateTodo(index, newValue),
                    checkColor: Colors.white,
                    activeColor: const Color.fromARGB(255, 244, 2, 164),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetaledTodoPage(),
                        settings: RouteSettings(
                          arguments: index,
                        ),
                      ),
                    );
                  },
                );
        }),
        separatorBuilder: (BuildContext context, int index) {
          return (index == state.length - 1)
              ? const Divider(
                  color: Colors.transparent,
                )
              : const Divider();
        },
        itemCount: state.length + 1,
        shrinkWrap: true,
      );
}

class ClearDoneTodos extends StatelessWidget {
  const ClearDoneTodos({
    Key? key,
    this.handleClearDone,
  }) : super(key: key);

  final VoidCallback? handleClearDone;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: TextButton(
        onPressed: handleClearDone,
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

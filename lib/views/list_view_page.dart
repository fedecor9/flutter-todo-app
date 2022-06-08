import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/todolist_cubit.dart';
import 'package:todo_app/extensions/build_context_extensions.dart';
import 'package:todo_app/views/detailed_todo_page.dart';
import 'package:todo_app/views/error_view.dart';

import 'package:todo_app/cubit/todo_list_states.dart';
import 'package:todo_app/models/todo.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cubit = context.cubit<TodolistCubit>();
    return BlocConsumer<TodolistCubit, TodoListState>(
      listener: (context, state) {
        if (!state.succes) {
          String error = state.maybeWhen(
              fail: ((todos, succes, error) => error), orElse: () => '');
          ScaffoldMessenger.of(context).showSnackBar(errorMessageView(error));
        }
      },
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

  SnackBar errorMessage(String error) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(error),
      action: SnackBarAction(
        label: 'Action',
        onPressed: () {},
      ),
    );
  }

  Container emtpyTodoList() {
    return Container(
      color: Colors.grey[200],
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
      color: Colors.grey[200],
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

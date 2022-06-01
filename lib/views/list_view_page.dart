import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/todolist_cubit.dart';
import 'package:todo_app/views/detailed_todo_page.dart';

import '../models/todo.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TodolistCubit>(context);
    print(cubit.state);
    return BlocBuilder<TodolistCubit, List<Todo>>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: ListView.separated(
            itemBuilder: ((context, index) {
              if (index == state.length) {
                return ClearDoneTodos(
                  handleClearDone: cubit.clearDone,
                );
              }
              if (index > state.length) {
                return const Divider(
                  color: Colors.transparent,
                );
              }
              return ListTile(
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
              if (index == state.length - 1) {
                return const Divider(
                  color: Colors.transparent,
                );
              }
              return const Divider();
            },
            itemCount: cubit.state.length + 1,
            shrinkWrap: true,
          ),
        );
      },
    );
  }
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
      color: const Color.fromARGB(108, 243, 243, 243),
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

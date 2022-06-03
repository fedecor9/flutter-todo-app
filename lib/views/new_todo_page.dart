import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/todolist_cubit.dart';
import '../extensions/build_context_extensions.dart';
import '../models/todo.dart';

class NewTodoPage extends StatefulWidget {
  const NewTodoPage({Key? key}) : super(key: key);

  @override
  State<NewTodoPage> createState() => _NewTodoPageState();
}

class _NewTodoPageState extends State<NewTodoPage> {
  final TextEditingController tittleController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();

  final bloc = BlocProvider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            style: TextButton.styleFrom(
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                primary: Colors.white),
            onPressed: () {
              Todo item = Todo(
                  title: tittleController.text,
                  description: descriptionController.text);
              context.cubit<TodolistCubit>().addTodo(item);
              Navigator.pop(
                context,
                item,
              );
            },
            child: const Text('Save'),
          )
        ],
        leading: TextButton(
          style: TextButton.styleFrom(
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              primary: Colors.white),
          onPressed: () => {Navigator.pop(context)},
          child: const Text('Cancel'),
        ),
        leadingWidth: 80,
        title: const Text('New task'),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                children: [
                  Transform.scale(
                    scale: 1.05,
                    child: TextFormField(
                      controller: tittleController,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 244, 2, 164),
                              width: 2.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 244, 2, 164),
                          ),
                        ),
                        labelText: 'Task title',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Task description',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NewTodoPage extends StatelessWidget {
  const NewTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                  primary: Colors.white),
              onPressed: () => {Navigator.pop(context)},
              child: const Text('Save'))
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
        color: Colors.grey[200],
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              children: [
                Transform.scale(
                  scale: 1.05,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Task title',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Task description',
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

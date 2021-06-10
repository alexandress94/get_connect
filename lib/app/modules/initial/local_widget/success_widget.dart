import 'package:flutter/material.dart';
import 'package:get_connect/app/data/models/todo_model.dart';

class SuccessWidget extends StatelessWidget {
  final List<TodoModel> state;
  const SuccessWidget({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.length,
      itemBuilder: (BuildContext _, int index) {
        final item = state[index];
        bool isCompleted = item.completed == true;
        MaterialColor color = isCompleted ? Colors.green : Colors.red;
        IconData icon = isCompleted ? Icons.check : Icons.close;
        return ListTile(
          leading: Icon(icon, color: color),
          title: Text(
            item.title!,
          ),
        );
      },
    );
  }
}

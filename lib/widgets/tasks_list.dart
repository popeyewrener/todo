import 'package:bloc_flutter_final/blocs/bloc/tasks_bloc.dart';
import 'package:flutter/material.dart';

import '../models/task.dart';
import '../blocs/bloc_exports.dart';

class Tasklist extends StatelessWidget {
  const Tasklist({
    Key? key,
    required this.tasklist,
  }) : super(key: key);

  final List<Task> tasklist;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasklist.length,
        itemBuilder: ((context, index) {
          var task = tasklist[index];
          return GestureDetector(
            onTap: () {
              context.read<TasksBloc>().add(Deletetask(task: task));
            },
            child: ListTile(
              title: Text(task.title),
              trailing: Checkbox(
                value: task.isdone,
                onChanged: (value) {
                  value = task.isdone == false ? true : false;
                },
              ),
            ),
          );
        }));
  }
}

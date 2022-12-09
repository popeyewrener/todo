import 'package:bloc_flutter_final/blocs/bloc/tasks_bloc.dart';
import 'package:bloc_flutter_final/models/task.dart';
import 'package:bloc_flutter_final/widgets/tasks_list.dart';
import 'package:flutter/material.dart';

import '../blocs/bloc_exports.dart';
import 'addtask.dart';

class Taskscreen extends StatelessWidget {
  const Taskscreen({super.key});

  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: addText()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.allTasks;

        return Scaffold(
            body: Column(
              children: [
                Expanded(
                    child: Tasklist(
                  tasklist: tasksList,
                )),
              ],
            ),
            floatingActionButton: FloatingActionButton(onPressed: (() {
              _addTask(context);
            })));
      },
    );
  }
}

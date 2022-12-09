import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bloc_exports.dart';
import '../models/task.dart';

class addText extends StatelessWidget {
  const addText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titlecontroller = TextEditingController();
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          Text('Add Text widget'),
          SizedBox(
            height: 10,
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                label: Text('Add task'), border: OutlineInputBorder()),
            controller: titlecontroller,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    var task = Task(title: titlecontroller.text);
                    context.read<TasksBloc>().add(Addtask(task: task));
                    Navigator.pop(context);
                  },
                  child: Text('Add')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'))
            ],
          ),
        ]),
      ),
    );
  }
}

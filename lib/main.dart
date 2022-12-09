import 'package:bloc_flutter_final/screens/taskscreen.dart';
import 'package:flutter/material.dart';
import './blocs/bloc_exports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TasksBloc()),
      ],
      child: const MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          home: Taskscreen()),
    );
  }
}

part of 'tasks_bloc.dart';

abstract class TasksEvent extends Equatable {
  const TasksEvent();

  @override
  List<Object> get props => [];
}

class Addtask extends TasksEvent {
  final Task task;
  const Addtask({
    required this.task,
  });
  @override
  List<Object> get props => [task];
}

class Updatetask extends TasksEvent {
  final Task task;
  const Updatetask({
    required this.task,
  });
  @override
  List<Object> get props => [task];
}

class Deletetask extends TasksEvent {
  final Task task;
  const Deletetask({
    required this.task,
  });
  @override
  List<Object> get props => [task];
}

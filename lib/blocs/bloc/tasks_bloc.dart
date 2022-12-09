import 'package:bloc/bloc.dart';
import 'package:bloc_flutter_final/models/task.dart';
import 'package:equatable/equatable.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(const TasksState()) {
    on<Addtask>(_onAddtask);
    on<Deletetask>(_onremovetask);
  }

  void _onAddtask(Addtask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(allTasks: List.from(state.allTasks)..add(event.task)));
  }

  void _onremovetask(Deletetask deletetask, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(
        allTasks: List.from(state.allTasks)..remove(deletetask.task)));
  }
}

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:task_manager/features/tasks/domain/entities/task.dart';
// import 'package:task_manager/features/tasks/domain/repositories/task_repository.dart';

// part 'task_event.dart';
// part 'task_state.dart';

// class TaskBloc extends Bloc<TaskEvent, TaskState> {
//   final TaskRepository _taskRepository;

//   TaskBloc({required TaskRepository taskRepository})
//       : _taskRepository = taskRepository,
//         super(TaskInitial()) {
//     on<LoadTasks>(_onLoadTasks);
//     on<AddTask>(_onAddTask);
//     on<UpdateTask>(_onUpdateTask);
//     on<DeleteTask>(_onDeleteTask);
//     on<FilterTasks>(_onFilterTasks);
//   }

//   Future<void> _onLoadTasks(
//     LoadTasks event,
//     Emitter<TaskState> emit,
//   ) async {
//     emit(TaskLoading());
//     try {
//       final tasks = await _taskRepository.getTasks();
//       emit(TaskLoaded(tasks));
//     } catch (e) {
//       emit(TaskError(e.toString()));
//     }
//   }

//   // Implement other event handlers
// }
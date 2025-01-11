import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              // Toggle theme
            },
          ),
        ],
      ),
      // body: BlocBuilder<TaskBloc, TaskState>(
      //   builder: (context, state) {
      //     if (state is TaskLoading) {
      //       return const Center(child: CircularProgressIndicator());
      //     }
      //     if (state is TaskLoaded) {
      //       return Column(
      //         children: [
      //           TaskStatistics(tasks: state.tasks),
      //           CalendarView(tasks: state.tasks),
      //           // Add task list
      //         ],
      //       );
      //     }
      //     return const Center(child: Text('Something went wrong'));
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show add task dialog
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

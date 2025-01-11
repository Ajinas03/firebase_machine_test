import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_machine_test/logic/theme/theme_cubit.dart';
import 'package:firebase_machine_test/screens/dashboard/widgets/task_statistics.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TaskStatistics(),
            // Add more dashboard widgets here
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show add task dialog
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
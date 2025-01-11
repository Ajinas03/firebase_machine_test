part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent {}

class ChangeScreen extends NavigationEvent {
  final int scrnNum;

  ChangeScreen({required this.scrnNum});
}
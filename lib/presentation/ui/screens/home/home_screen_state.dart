part of 'home_screen_cubit.dart';

@immutable
abstract class HomeScreenState extends Equatable {}

class HomeScreenInitial extends HomeScreenState {
  @override
  List<Object?> get props => [];
}

class Loading extends HomeScreenState {
  @override
  List<Object?> get props => [];
}

class Loaded extends HomeScreenState {
  final User user;
  Loaded({required this.user});
  @override
  List<Object?> get props => [user];
}

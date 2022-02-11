import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:quickbird/domain/entities/user/user.dart';
import 'package:quickbird/domain/usecases/user/user_use_case.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final UserUseCase _userUseCase;
  HomeScreenCubit(this._userUseCase) : super(HomeScreenInitial());

  void loadUser(String username) async {
    if (username.contains("@")) {
      username = username.replaceAll("@", "");
    }

    emit(Loading());
    try {
      User user = await _userUseCase.getUserData(username);
      emit(Loaded(user: user));
    } catch (e) {
      emit(HomeScreenInitial());
    }
  }
}

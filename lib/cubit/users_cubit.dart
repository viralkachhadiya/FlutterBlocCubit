import 'package:bloc/bloc.dart';
import 'package:bloccubit/model/user.dart';
import 'package:equatable/equatable.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersInitial());

  List<User> users = [];

  Future<void> fetchList() async {
    try {
      emit(UsersLoading());
      await Future.delayed(Duration(seconds: 2));
      emit(UsersSccess(users: users));
    } catch (e) {
      emit(UsersFailure(failureMsg: e.toString()));
    }
  }

  Future<void> deleteUser(int index) async {
    try {
      emit(UsersLoading());
      await Future.delayed(Duration(seconds: 2));
      users.removeAt(index);
      emit(UsersSccess(users: users));
    } catch (e) {
      emit(UsersFailure(failureMsg: e.toString()));
    }
  }

  Future<void> createUser(String name, String loyalty) async {
    try {
      emit(UsersLoading());
      await Future.delayed(Duration(seconds: 2));
      users.add(User(name: name, loyalty: loyalty));
      emit(UsersSccess(users: users));
    } catch (e) {
      emit(UsersFailure(failureMsg: e.toString()));
    }
  }
}

part of 'users_cubit.dart';

abstract class UsersState extends Equatable {
  const UsersState();

  @override
  List<Object> get props => [];
}

class UsersInitial extends UsersState {}

class UsersLoading extends UsersState {}

class UsersSccess extends UsersState {
  final List<User> users;
  UsersSccess({this.users});
}

class UsersFailure extends UsersState {
  final String failureMsg;
  UsersFailure({this.failureMsg});
}

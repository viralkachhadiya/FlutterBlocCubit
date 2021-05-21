import 'package:bloccubit/cubit/users_cubit.dart';
import 'package:bloccubit/view/create_user.dart';
import 'package:bloccubit/view/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TODOUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO User"),
      ),
      body: BlocProvider(
        create: (context) => UsersCubit()..fetchList(),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CreateUser(),
          UserList(),
        ],
      ),)
    );
  }
}

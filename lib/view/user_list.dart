import 'package:bloccubit/cubit/users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) => state is UsersLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : state is UsersFailure
                ? Center(
                    child: Text(state.failureMsg),
                  )
                : state is UsersSccess
                    ? ListView.builder(
                        itemCount: state.users.length,
                        padding: EdgeInsets.all(20.0),
                        itemBuilder: (context, index) => Card(
                                child: ListTile(
                              title: Text(
                                state.users[index].name,
                                style: TextStyle(fontSize: 15.0),
                              ),
                              subtitle: Text(
                                state.users[index].loyalty,
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.grey[500]),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    context
                                        .read<UsersCubit>()
                                        .deleteUser(index);
                                  }),
                            )))
                    : Container(),
      ),
    );
  }
}

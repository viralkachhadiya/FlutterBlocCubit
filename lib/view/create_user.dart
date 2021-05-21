import 'package:bloccubit/cubit/users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateUser extends StatelessWidget {
  TextEditingController userNameController = TextEditingController();
  TextEditingController loyaltyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: userNameController,
            decoration: InputDecoration(
                isDense: true,
                hintText: "Enter user name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0))),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: loyaltyController,
            decoration: InputDecoration(
                isDense: true,
                hintText: "Who is your loyalty?",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0))),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () {
                context.read<UsersCubit>().createUser(
                    userNameController.text.toUpperCase(),
                    loyaltyController.text.trim());
                userNameController.clear();
                loyaltyController.clear();
              },
              child: Text("Create"))
        ],
      ),
    );
  }
}

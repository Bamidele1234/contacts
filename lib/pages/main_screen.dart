import 'package:exercise5/bloc/app_bloc.dart';
import 'package:exercise5/constants.dart';
import 'package:exercise5/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 25),
                    child: Text(
                      "Contacts",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const TextField(
                showCursor: false,
                decoration: kInputDecoration,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                  'My Contacts (${context.watch<AppBloc>().getContacts().length})'),
              const SizedBox(
                height: 15,
              ),
              const Expanded(
                child: ContactList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

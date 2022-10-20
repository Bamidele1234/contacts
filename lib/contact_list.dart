import 'package:exercise5/bloc/app_bloc.dart';
import 'package:exercise5/model/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppBloc>(
      builder: (BuildContext context, data, Widget? child) {
        return ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            scrollbars: false, // Remove the scroll bar by the side
            physics:
                const BouncingScrollPhysics(), // Create a bouncy scroll effect
          ),
          child: ListView.builder(
            itemCount: data.getContacts().length,
            itemBuilder: (context, index) {
              Contact item = data.getContacts()[index];
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                leading: CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(item.image),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: Text(
                    item.name,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

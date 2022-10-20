import 'package:exercise5/model/contact_model.dart';
import 'package:flutter/material.dart';

class AppBloc extends ChangeNotifier {
  AppBloc();

  List<Contact> getContacts() {
    List<Contact> contacts = [];
    for (int i = 1; i < 20; i++) {
      contacts.add(Contact(image: 'assets/img.jpg', name: 'Bertina Terrell'));
    }
    return contacts;
  }
}

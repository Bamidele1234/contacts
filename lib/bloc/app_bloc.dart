import 'package:exercise5/model/contact_model.dart';
import 'package:flutter/material.dart';

class AppBloc extends ChangeNotifier {
  AppBloc();

  List<String> names = [
    'Nolan Neal',
    'Ally Jones',
    'Davin Tran',
    'Armani Kane',
    'Jackson Santos',
    'Willow Brooks',
    'Frank Ham',
    'Kathy Cooper',
    'Charlie Phelps',
    'Belen Casey',
    'Tanya Randolph,'
        'Kyla Wilcox',
    'Davin Tran',
    'Armani Kane',
    'Jackson Santos',
    'Willow Brooks',
    'Frank Ham',
    'Kathy Cooper',
    'Charlie Phelps',
    'Belen Casey',
    'Kathy Cooper',
    'Charlie Phelps',
    'Belen Casey',
  ];

  List<Contact> getContacts() {
    List<Contact> contacts = [];
    for (int i = 0; i < 20; i++) {
      contacts.add(
        Contact(image: 'assets/00${40 + i}.jpg', name: names[i]),
      );
    }
    return contacts;
  }
}

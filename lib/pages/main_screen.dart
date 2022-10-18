import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Contacts",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFE9EBEC),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text('Recently Added'),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                  ),
                  Text('Contacts (125)'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TremsAndConditions extends StatefulWidget {
  const TremsAndConditions({super.key});

  @override
  State<TremsAndConditions> createState() => _TremsAndConditionsState();
}

class _TremsAndConditionsState extends State<TremsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            "Trems & Conditions",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Lorem ipsum dolor",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore\n et dolore magna aliqua. Ut enim ad minim veniam,\n quis nostrud exercitation ullamco laboris nisi ut \naliquip ex ea commodo consequat. Duis aute irure\n dolor in reprehenderit in voluptate velit esse cillum\n dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            const SizedBox(height: 20),
            const Text(
              "Lorem ipsum dolor",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore\n et dolore magna aliqua. Ut enim ad minim veniam,\n quis nostrud exercitation ullamco laboris nisi ut \naliquip ex ea commodo consequat. Duis aute irure\n dolor in reprehenderit in voluptate velit esse cillum\n dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.grey[300],
              child: const Text(
                "aliquip ex ea commodo consequat. Duis aute irure\n dolor in reprehenderit in voluptate velit esse cillum\n dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              ),
            ),
            const SizedBox(height: 20),
            const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore\n et dolore magna aliqua. Ut enim ad minim veniam,\n quis nostrud exercitation ullamco laboris nisi ut \naliquip ex ea commodo consequat. Duis aute irure\n dolor in reprehenderit in voluptate velit esse cillum\n dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          ]),
        ),
      ),
    );
  }
}

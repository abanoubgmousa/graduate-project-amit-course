import 'package:flutter/material.dart';

class SavedNotificationsSuccessful extends StatefulWidget {
  const SavedNotificationsSuccessful({super.key});

  @override
  State<SavedNotificationsSuccessful> createState() =>
      _SavedNotificationsSuccessfulState();
}

class _SavedNotificationsSuccessfulState
    extends State<SavedNotificationsSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Container(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/images/spalsh_screen.png",
              width: 170,
              height: 100,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: stackOfDesigneBulider()),
              const SizedBox(height: 25),
              const Text(
                "Nothing has been saved yet",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Press the star icon on the job you wqnt to save",
                textAlign: TextAlign.center,
              ),
            ]),
      ),
    );
  }

  Widget stackOfDesigneBulider() {
    return Stack(
      children: [
        Image.asset("assets/images/Ellipse 2.png"),
        Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Image.asset("assets/images/Ellipse 1.png")),
        Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.blue[700],
              size: 60,
            )),
      ],
    );
  }
}

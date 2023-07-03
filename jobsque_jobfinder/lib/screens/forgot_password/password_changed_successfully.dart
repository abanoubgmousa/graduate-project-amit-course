import 'package:flutter/material.dart';

class PasswordChangedSuccessfully extends StatefulWidget {
  const PasswordChangedSuccessfully({super.key});

  @override
  State<PasswordChangedSuccessfully> createState() =>
      _PasswordChangedSuccessfullyState();
}

class _PasswordChangedSuccessfullyState
    extends State<PasswordChangedSuccessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                "Password changed",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "successfully!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                  "Your password has been changed successfully,\nwe will let you know if there are more problems"),
              const Text(
                "with your account",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 200),
              buttonbulider(),
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
              Icons.cloud_download_outlined,
              color: Colors.blue[700],
              size: 60,
            )),
      ],
    );
  }

  Widget buttonbulider() {
    return MaterialButton(
      onPressed: () {},
      color: Colors.blue[600],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      child: const Text(
        "Open email app",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

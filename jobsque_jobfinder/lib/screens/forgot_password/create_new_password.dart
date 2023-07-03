import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/forgot_password/password_changed_successfully.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create New Password",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
                "Set your new password so you can login and \naccess Jobsque"),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  hintText: "********"),
            ),
            const SizedBox(height: 10),
            const Text("Password must be at least 8 characters"),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  hintText: "********"),
            ),
            const SizedBox(height: 10),
            const Text("Both password must match"),
            const SizedBox(height: 240),
            buttonbulider()
          ],
        ),
      ),
    );
  }

  Widget buttonbulider() {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const PasswordChangedSuccessfully()));
      },
      color: Colors.blue[600],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      child: const Text(
        "Reset password",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

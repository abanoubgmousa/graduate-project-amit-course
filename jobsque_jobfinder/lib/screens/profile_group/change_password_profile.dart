import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/profile_group/two_step_verification1.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            "Phone number",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Enter your old password",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  prefixIcon: const Icon(Icons.lock_outline),
                  hintText: "********",
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            const Text(
              "Enter your new password",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  prefixIcon: const Icon(Icons.lock_outline),
                  hintText: "********",
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            const Text(
              "Confirm your new password",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  prefixIcon: const Icon(Icons.lock_outline),
                  hintText: "********",
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 170),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TwoStepVerification1()));
              },
              color: Colors.blue[700],
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

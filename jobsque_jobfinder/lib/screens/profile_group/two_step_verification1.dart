import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/profile_group/two_step_verification2.dart';

class TwoStepVerification1 extends StatefulWidget {
  const TwoStepVerification1({super.key});

  @override
  State<TwoStepVerification1> createState() => _TwoStepVerification1State();
}

class _TwoStepVerification1State extends State<TwoStepVerification1> {
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
          children: [
            const SizedBox(height: 10),
            SwitchListTile(
              contentPadding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.grey)),
              value: false,
              onChanged: (value) {},
              title: const Text(
                  "Secure your account with\n two-step verification"),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue[100],
                  radius: 20,
                  child: const Icon(Icons.lock_outline),
                ),
                const SizedBox(width: 15),
                const Text(
                    "Two-step verification provides additional\nsecurity by asking for a verification code\nevery time you log in on another device")
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue[100],
                  radius: 20,
                  child: const Icon(Icons.smartphone_sharp),
                ),
                const SizedBox(width: 15),
                const Text(
                    "Adding a phone number or useing an\nauthenticator will help keep your account\nsafe from harm")
              ],
            ),
            const SizedBox(
              height: 250,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TwoStepVerification2()));
              },
              color: Colors.blue[700],
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

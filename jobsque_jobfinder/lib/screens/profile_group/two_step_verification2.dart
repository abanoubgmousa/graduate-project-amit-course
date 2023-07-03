import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/profile_group/two_step_verification3.dart';

class TwoStepVerification2 extends StatefulWidget {
  const TwoStepVerification2({super.key});

  @override
  State<TwoStepVerification2> createState() => _TwoStepVerification2State();
}

class _TwoStepVerification2State extends State<TwoStepVerification2> {
  bool notify = false;
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
            const SizedBox(height: 10),
            SwitchListTile(
              contentPadding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.grey)),
              value: notify,
              onChanged: (value) {
                setState(() {
                  notify = value;
                });
              },
              title: const Text(
                  "Secure your account with\n two-step verification"),
            ),
            const SizedBox(height: 30),
            const Text("Select a verifcation method"),
            const SizedBox(height: 10),
            expansionTileBuilder(),
            const SizedBox(height: 10),
            const Text(
                "Note:Turning this feature will sign you out anywhere\nyou're currently signed in,We well then require you to\n enter a verification code the first time you sign with a\nnew device or joby mobile application"),
            const SizedBox(height: 200),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TwoStepVerification3()));
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

  Widget expansionTileBuilder() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: ExpansionTile(
        title: const Text("Telephone number (SMS)"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.grey)),
      ),
    );
  }
}

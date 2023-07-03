import 'package:flutter/material.dart';

class TwoStepVerification4 extends StatefulWidget {
  const TwoStepVerification4({super.key});

  @override
  State<TwoStepVerification4> createState() => _TwoStepVerification4State();
}

class _TwoStepVerification4State extends State<TwoStepVerification4> {
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
        margin: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Enter the 6 digit code",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            "Please confirm your account by entering the \nauthorization code send to***-***-7234",
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: const Text("2"),
              ),
              const SizedBox(width: 10),
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: const Text("2"),
              ),
              const SizedBox(width: 10),
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: const Text("2"),
              ),
              const SizedBox(width: 10),
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
              ),
              const SizedBox(width: 10),
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
              ),
              const SizedBox(width: 10),
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text("Resend code"),
              TextButton(onPressed: () {}, child: const Text("42s"))
            ],
          ),
          const SizedBox(height: 300),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TwoStepVerification4()));
            },
            color: Colors.blue[700],
            minWidth: MediaQuery.of(context).size.width,
            height: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Text(
              "Verify",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}

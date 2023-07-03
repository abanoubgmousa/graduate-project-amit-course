import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/home_screens/home_screen.dart';
import 'package:jobsque_jobfinder/screens/onboarding_group/onboarding3.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/images/spalsh_screen.png",
                    width: 80,
                    height: 80,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                    },
                    child: const Text("Skip"))
              ],
            ),
            Image.asset("assets/images/image 8.png"),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: "Hundreds of jobs are\n waiting for you to ",
                    style: TextStyle(fontSize: 30, color: Colors.black)),
                TextSpan(
                    text: "join \n together ",
                    style: TextStyle(fontSize: 30, color: Colors.blue)),
              ]),
            ),
            const SizedBox(height: 10),
            const Text(
              "immediately join us and start applying for the\n job are interested in",
              style: TextStyle(fontSize: 15),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Onboarding3()));
                },
                minWidth: 300,
                height: 50,
                color: Colors.blue[600],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Text("Next"),
              ),
            )
          ]),
    );
  }
}

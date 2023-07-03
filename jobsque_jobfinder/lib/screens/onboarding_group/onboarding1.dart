import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/home_screens/home_screen.dart';
import 'package:jobsque_jobfinder/screens/onboarding_group/onboarding2.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
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
            Image.asset("assets/images/onboarding1.png"),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: "Find a job,and ",
                    style: TextStyle(fontSize: 30, color: Colors.black)),
                TextSpan(
                    text: "start \n buliding ",
                    style: TextStyle(fontSize: 30, color: Colors.blue)),
                TextSpan(
                    text: "your career \n from now on",
                    style: TextStyle(fontSize: 30, color: Colors.black)),
              ]),
            ),
            const SizedBox(height: 10),
            const Text(
              "Explore over 25,924 avilable job roles and\n upgrade your operator now.",
              style: TextStyle(fontSize: 15),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Onboarding2()));
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

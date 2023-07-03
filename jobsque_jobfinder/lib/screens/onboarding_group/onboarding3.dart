import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/home_screens/home_screen.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
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
            Image.asset("assets/images/image 9.png"),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: "Get the best ",
                    style: TextStyle(fontSize: 30, color: Colors.black)),
                TextSpan(
                    text: "choice for \n the job ",
                    style: TextStyle(fontSize: 30, color: Colors.blue)),
                TextSpan(
                    text: "you've always\n dreamed of ",
                    style: TextStyle(fontSize: 30, color: Colors.black)),
              ]),
            ),
            const SizedBox(height: 10),
            const Text(
              "the better the skills you have,the greater the\n good job opportunities for you ",
              style: TextStyle(fontSize: 15),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
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

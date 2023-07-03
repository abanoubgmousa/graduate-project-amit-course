import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/job_details/description.dart';
import 'package:jobsque_jobfinder/screens/login_and_ceate_account_group/where_your_location.dart';

class FinishedAccount extends StatefulWidget {
  const FinishedAccount({super.key});

  @override
  State<FinishedAccount> createState() => _FinishedAccountState();
}

class _FinishedAccountState extends State<FinishedAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const WhereYourLocation()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            stackOfDesigneBulider(),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Your account has been set up!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("We have customized feeds according to you"),
            const Align(alignment: Alignment.center, child: Text("prefrences")),
            const SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Description()));
              },
              color: Colors.blue[600],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              child: const Text("Get Started"),
            )
          ],
        ),
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
              Icons.account_circle_outlined,
              color: Colors.blue[700],
              size: 60,
            )),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/home_screens/home_screen.dart';

class JobDetailsFinished extends StatefulWidget {
  const JobDetailsFinished({super.key});

  @override
  State<JobDetailsFinished> createState() => _JobDetailsFinishedState();
}

class _JobDetailsFinishedState extends State<JobDetailsFinished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            "Apply Job",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: stackOfDesigneBulider(),
          ),
          const SizedBox(
            height: 300,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            color: Colors.blue[600],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            minWidth: MediaQuery.of(context).size.width,
            height: 50,
            child: const Text("Back to home"),
          ),
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
              Icons.local_mall_outlined,
              color: Colors.blue[700],
              size: 60,
            )),
      ],
    );
  }
}

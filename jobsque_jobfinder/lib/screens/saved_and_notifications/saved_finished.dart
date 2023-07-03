import 'package:flutter/material.dart';

class SavedFinished extends StatefulWidget {
  const SavedFinished({super.key});

  @override
  State<SavedFinished> createState() => _SavedFinishedState();
}

class _SavedFinishedState extends State<SavedFinished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Saved",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: stackOfDesigneBulider()),
              const SizedBox(height: 25),
              const Text(
                "Nothing has been saved yet",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Press the star icon on the job you wqnt to save",
                textAlign: TextAlign.center,
              ),
            ]),
      ),
      bottomNavigationBar: bottomNavigationBulider(),
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
              Icons.bookmark_outline,
              color: Colors.blue[700],
              size: 60,
            )),
      ],
    );
  }

  Widget bottomNavigationBulider() {
    return BottomNavigationBar(
        currentIndex: 3,
        onTap: (value) {
          setState(() {
            value = 3;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_outlined), label: "Applied"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: "Saved"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ]);
  }
}

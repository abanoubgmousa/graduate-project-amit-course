import 'package:flutter/material.dart';

class MessagesErrorResult extends StatefulWidget {
  const MessagesErrorResult({super.key});

  @override
  State<MessagesErrorResult> createState() => _MessagesErrorResultState();
}

class _MessagesErrorResultState extends State<MessagesErrorResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Messages",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          children: [textFormBulider(), containerIconBuilder()],
        ),
        const SizedBox(
          height: 20,
        ),
        Center(child: stackOfDesigneBulider()),
        const SizedBox(height: 25),
        const Text(
          "You have not recevied any",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const Text(
          "messages",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Once your application has reached the interview\nstage,you will get a message from the recruiter.",
          textAlign: TextAlign.center,
        ),
      ]),
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
              Icons.comment_outlined,
              color: Colors.blue[700],
              size: 60,
            )),
        const Positioned(
            top: 30,
            right: 60,
            left: 0,
            bottom: 0,
            child: Icon(
              Icons.cancel_outlined,
              color: Colors.black,
              size: 30,
            )),
      ],
    );
  }

  Widget bottomNavigationBulider() {
    return BottomNavigationBar(
        currentIndex: 1,
        onTap: (value) {
          setState(() {
            value = 1;
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

  Widget containerIconBuilder() {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.swap_horiz_outlined,
          size: 50,
        ),
      ),
    );
  }

  Widget textFormBulider() {
    return Expanded(
      flex: 2,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          hintText: "Search messages...",
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}

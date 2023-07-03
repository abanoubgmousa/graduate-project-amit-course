import 'package:flutter/material.dart';

class HelpSenter extends StatefulWidget {
  const HelpSenter({super.key});

  @override
  State<HelpSenter> createState() => _HelpSenterState();
}

class _HelpSenterState extends State<HelpSenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            "Help Center",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              textFormFieldBuilder(),
              const SizedBox(
                height: 20,
              ),
              expinsionTileBulider(),
              const SizedBox(
                height: 10,
              ),
              expinsionTileBulider(),
              const SizedBox(
                height: 10,
              ),
              expinsionTileBulider(),
              const SizedBox(
                height: 10,
              ),
              expinsionTileBulider(),
              const SizedBox(
                height: 10,
              ),
              expinsionTileBulider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget textFormFieldBuilder() {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: "What can we help?",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }

  Widget expinsionTileBulider() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: const ExpansionTile(
        title: Text(
          "Lorime ipsum dolor sit amet",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore\n et dolore magna aliqua. Ut enim ad minim veniam,\n quis nostrud exercitation ullamco laboris nisi ut \naliquip ex ea commodo consequat. Duis aute irure\n dolor in reprehenderit in voluptate velit esse cillum\n dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/home_screens/home_screen.dart';

class ViewSuggestedJob extends StatefulWidget {
  const ViewSuggestedJob({super.key});

  @override
  State<ViewSuggestedJob> createState() => _ViewSuggestedJobState();
}

class _ViewSuggestedJobState extends State<ViewSuggestedJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
        elevation: 0,
        title: TextFormField(
            decoration: InputDecoration(
                hintText: "type something",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.black,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)))),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.grey[400],
            child: const Text(
              "Recent search",
            ),
          ),
          const ListTile(
            leading: Icon(Icons.query_builder),
            title: Text("Junior UI Designer"),
            trailing: Icon(Icons.highlight_off, color: Colors.red),
          ),
          const ListTile(
            leading: Icon(Icons.query_builder),
            title: Text("Junior UX Designer"),
            trailing: Icon(Icons.highlight_off, color: Colors.red),
          ),
          const ListTile(
            leading: Icon(Icons.query_builder),
            title: Text("Product Designer"),
            trailing: Icon(Icons.highlight_off, color: Colors.red),
          ),
          const ListTile(
            leading: Icon(Icons.query_builder),
            title: Text("Project Manager"),
            trailing: Icon(Icons.highlight_off, color: Colors.red),
          ),
          const ListTile(
            leading: Icon(Icons.query_builder),
            title: Text(" UI/UX Designer"),
            trailing: Icon(Icons.highlight_off, color: Colors.red),
          ),
          const ListTile(
            leading: Icon(Icons.query_builder),
            title: Text("Front-End Developer"),
            trailing: Icon(Icons.highlight_off, color: Colors.red),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.grey[400],
            child: const Text(
              "Popular searchs",
            ),
          ),
          const ListTile(
            leading: Icon(Icons.search_off),
            title: Text("Junior UI Designer"),
            trailing:
                Icon(Icons.arrow_circle_right_outlined, color: Colors.blue),
          ),
          const ListTile(
            leading: Icon(Icons.search_off),
            title: Text("Junior UX Designer"),
            trailing:
                Icon(Icons.arrow_circle_right_outlined, color: Colors.blue),
          ),
          const ListTile(
            leading: Icon(Icons.search_off),
            title: Text("Product Designer"),
            trailing:
                Icon(Icons.arrow_circle_right_outlined, color: Colors.blue),
          ),
          const ListTile(
            leading: Icon(Icons.search_off),
            title: Text("Project Manager"),
            trailing:
                Icon(Icons.arrow_circle_right_outlined, color: Colors.blue),
          ),
          const ListTile(
            leading: Icon(Icons.search_off),
            title: Text(" UI/UX Designer"),
            trailing:
                Icon(Icons.arrow_circle_right_outlined, color: Colors.blue),
          ),
          const ListTile(
            leading: Icon(Icons.search_off),
            title: Text("Front-End Developer"),
            trailing:
                Icon(Icons.arrow_circle_right_outlined, color: Colors.blue),
          ),
        ]),
      ),
    );
  }
}

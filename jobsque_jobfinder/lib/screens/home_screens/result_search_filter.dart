import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/home_screens/view_recent_search.dart';

class ResultSearchFilter extends StatefulWidget {
  const ResultSearchFilter({super.key});

  @override
  State<ResultSearchFilter> createState() => _ResultSearchFilterState();
}

class _ResultSearchFilterState extends State<ResultSearchFilter> {
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
                MaterialPageRoute(builder: (context) => const ViewRecentJob()));
          },
        ),
        elevation: 0,
        title: TextFormField(
            decoration: InputDecoration(
                hintText: "UI/UX Designer",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.black,
                suffixIcon: const Icon(Icons.highlight_off),
                suffixIconColor: Colors.black,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)))),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: typeOfJobBulder(),
          ),
          const SizedBox(
            height: 150,
          ),
          stackOfDesigneBulider(),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Search not found",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Try searching with deffrenent keywords so"),
          const Align(
              alignment: Alignment.center, child: Text("we can show you"))
        ],
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
            top: 50,
            right: 0,
            left: 50,
            bottom: 0,
            child: Image.asset("assets/images/point.png")),
        Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Image.asset("assets/images/Vector_1.png")),
        Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Image.asset("assets/images/Vector.png")),
      ],
    );
  }

  Widget typeOfJobBulder() {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.tune)),
        MaterialButton(
          onPressed: () {},
          color: Colors.blue[900],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: const [
              Text(
                "Remoute",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.expand_more,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(width: 20),
        MaterialButton(
          onPressed: () {},
          color: Colors.blue[900],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: const [
              Text(
                "Fulltime",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.expand_more,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(width: 20),
        MaterialButton(
          onPressed: () {},
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: const [
              Text(
                "Post date",
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.expand_more,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

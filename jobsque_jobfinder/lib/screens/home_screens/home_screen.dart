import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/home_screens/view_recent_search.dart';
import 'package:jobsque_jobfinder/screens/home_screens/view_suggested_job.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleBulder(),
            Container(
                padding: const EdgeInsets.only(left: 10),
                child: const Text("Create a better future for yourself here")),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Suggested Job"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ViewRecentJob()));
                      },
                      child: const Text("View all"))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cardBulider(),
                  card2Bulider(),
                ],
              ),
            ),
            paddingBulder(),
            paddingimageBulider(),
            paddingButtonsBulder(),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            paddingBulder(),
            paddingimageBulider(),
            paddingButtonsBulder(),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBulider(),
    );
  }

  Widget paddingBulder() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Resent Job"),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ViewSuggestedJob()));
              },
              child: const Text("View all"))
        ],
      ),
    );
  }

  Widget paddingimageBulider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            "assets/images/twitter.png",
            width: 30,
            height: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          const Text("Senior UI Designer"),
          const SizedBox(
            width: 190,
          ),
          const Icon(
            Icons.turned_in_outlined,
            color: Color.fromARGB(255, 0, 112, 204),
          )
        ],
      ),
    );
  }

  Widget paddingButtonsBulder() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.blue[100],
            child: Text(
              "FullTime",
              style: TextStyle(color: Colors.blue[600]),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.blue[100],
            child: Text(
              "Remoute",
              style: TextStyle(color: Colors.blue[600]),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.blue[100],
            child: Text(
              "Senior",
              style: TextStyle(color: Colors.blue[600]),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Text(
            "\$15K",
            style: TextStyle(color: Colors.green),
          ),
          const Text(
            "/month",
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget bottomNavigationBulider() {
    return BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {
          setState(() {
            value = 0;
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

  Widget cardBulider() {
    return Card(
      margin: const EdgeInsets.all(20),
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.blue[900], borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  color: Colors.white,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.blue,
                    child: const Icon(
                      Icons.videocam,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  "Product designer",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  width: 40,
                ),
                const Icon(
                  Icons.turned_in_outlined,
                  size: 15,
                  color: Colors.white,
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              child: const Text(
                "Zoom . United States",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white24,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Fulltime",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white24,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Remoute",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white24,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Apply Naw",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  const Text(
                    "\$12K-15K",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "/Month",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      "Apply",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget card2Bulider() {
    return Card(
      margin: const EdgeInsets.all(20),
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: Colors.black)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  color: Colors.white,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.blue,
                    child: const Icon(
                      Icons.videocam,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  "Product designer",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  width: 40,
                ),
                const Icon(
                  Icons.turned_in_outlined,
                  size: 15,
                  color: Colors.white,
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              child: const Text(
                "Zoom . United States",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white24,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Fulltime",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white24,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Remoute",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white24,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Apply",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  const Text(
                    "\$12K-15K",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "/Month",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      "Designe",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget titleBulder() {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          "Hi,Rafif Dian",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        IconButton(
          onPressed: () {},
          icon: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1)),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

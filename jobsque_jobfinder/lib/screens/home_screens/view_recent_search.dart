import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/home_screens/home_screen.dart';
import 'package:jobsque_jobfinder/screens/home_screens/result_search_filter.dart';
import 'package:jobsque_jobfinder/screens/home_screens/set_filter.dart';

class ViewRecentJob extends StatefulWidget {
  const ViewRecentJob({super.key});

  @override
  State<ViewRecentJob> createState() => _ViewRecentJobState();
}

class _ViewRecentJobState extends State<ViewRecentJob> {
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
                hintText: "UI/UX Designer",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.black,
                suffixIcon: const Icon(Icons.highlight_off),
                suffixIconColor: Colors.black,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)))),
      ),
      body: ListView(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SetFilter()));
                  },
                  icon: const Icon(Icons.tune)),
              MaterialButton(
                onPressed: () {},
                color: Colors.blue[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
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
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 200,
                          child: Column(
                            children: [
                              const Text(
                                "On-Site/Remote",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    color: Colors.blueAccent[100],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Text(
                                      "Remote",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    color: Colors.blueAccent[100],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Text(
                                      "Remote",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: const BorderSide(
                                            width: 1, color: Colors.grey)),
                                    child: const Text(
                                      "Remote",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: const BorderSide(
                                            width: 1, color: Colors.grey)),
                                    child: const Text(
                                      "Remote",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const ResultSearchFilter()));
                                },
                                height: 50,
                                minWidth: 250,
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  "Remote",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                color: Colors.blue[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
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
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: Colors.grey[400],
          child: const Text(
            "Featuring 120+jobs",
          ),
        ),

        // list of items
        const SizedBox(height: 10),
        ListTile(
          leading: Image.asset(
            "assets/images/twitter.png",
            width: 50,
            height: 50,
          ),
          title: const Text(
            "UI/UX Designer",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("Twitter . Jakarta,Indonesia"),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark,
                color: Colors.blue,
                size: 30,
              )),
        ),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Fulltime",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Remoute",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            const Text(
              "\$10K",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            const Text(
              "/Month",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ],
        ),
        const Divider(color: Colors.grey, height: 30),

        ////////////////////////////////////////////////
        const SizedBox(height: 10),
        ListTile(
          leading: Image.asset(
            "assets/images/twitter.png",
            width: 50,
            height: 50,
          ),
          title: const Text(
            "UI/UX Designer",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("Spectrum . Jakarta,Indonesia"),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                color: Colors.black,
                size: 30,
              )),
        ),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Fulltime",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Remoute",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            const Text(
              "\$10K",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            const Text(
              "/Month",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ],
        ),
        const Divider(color: Colors.grey, height: 30),

        /////////////////////////////////////////////////
        const SizedBox(height: 10),
        ListTile(
          leading: Image.asset(
            "assets/images/twitter.png",
            width: 50,
            height: 50,
          ),
          title: const Text(
            "UI/UX Designer",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("VK . Yogyakarta,Indonesia"),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                color: Colors.black,
                size: 30,
              )),
        ),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Fulltime",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Remoute",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            const Text(
              "\$10K",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            const Text(
              "/Month",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ],
        ),
        const Divider(color: Colors.grey, height: 30),

        ///////////////////////////////////////////////////////////
        const SizedBox(height: 10),
        ListTile(
          leading: Image.asset(
            "assets/images/twitter.png",
            width: 50,
            height: 50,
          ),
          title: const Text(
            "UI/UX Designer",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("Invision . Jakarta,Indonesia"),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                color: Colors.black,
                size: 30,
              )),
        ),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Fulltime",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Remoute",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            const Text(
              "\$10K",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            const Text(
              "/Month",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ],
        ),
        const Divider(color: Colors.grey, height: 30),

        ////////////////////////////////////////////////
        const SizedBox(height: 10),
        ListTile(
          leading: Image.asset(
            "assets/images/twitter.png",
            width: 50,
            height: 50,
          ),
          title: const Text(
            "UI/UX Designer",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("Behance . Surakarta,Indonesia"),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                color: Colors.black,
                size: 30,
              )),
        ),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Fulltime",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Remoute",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            const Text(
              "\$10K",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            const Text(
              "/Month",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ],
        ),
        const Divider(color: Colors.grey, height: 30),
      ]),
    );
  }
}

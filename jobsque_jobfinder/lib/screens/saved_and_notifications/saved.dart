import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/saved_and_notifications/saved_finished.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Saved",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey[300],
              height: 35,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: const Text("12 Job Saved"),
            ),
            const SizedBox(height: 20),
            listTileBulider(),
            containerBulider(),
            const SizedBox(height: 10),
            dividerBulider(),
            const SizedBox(height: 10),
            listTileBulider(),
            containerBulider(),
            const SizedBox(height: 10),
            dividerBulider(),
            const SizedBox(height: 10),
            listTileBulider(),
            containerBulider(),
            const SizedBox(height: 10),
            dividerBulider(),
            const SizedBox(height: 10),
            listTileBulider(),
            containerBulider(),
            const SizedBox(height: 10),
            dividerBulider(),
            const SizedBox(height: 10),
            listTileBulider(),
            containerBulider(),
            const SizedBox(height: 10),
            dividerBulider(),
            const SizedBox(height: 10),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBulider(),
    );
  }

  Widget listTileBulider() {
    return ListTile(
        leading: Image.asset(
          "assets/images/twitter.png",
          width: 50,
          height: 50,
        ),
        title: const Text("Senior UI Designer"),
        subtitle: const Text("Twitter.Jakarta,Indonesia"),
        trailing: IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 280,
                    child: ListView(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: ListTile(
                            leading: const Icon(Icons.print_outlined),
                            title: const Text(
                              "Apply Job",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SavedFinished()));
                                },
                                icon: const Icon(Icons.arrow_forward_ios)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: ListTile(
                            leading: const Icon(Icons.cloud_upload_outlined),
                            title: const Text(
                              "Share Via...",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.arrow_forward_ios)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: ListTile(
                            leading: const Icon(Icons.bookmark_outline),
                            title: const Text(
                              "Cancel Save",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.arrow_forward_ios)),
                          ),
                        ),
                      ],
                    ),
                  );
                });
          },
        ));
  }

  Widget containerBulider() {
    return Container(
      color: Colors.grey[300],
      height: 35,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: const Text("12 Job Saved"),
    );
  }

  Widget dividerBulider() {
    return const Divider(
      thickness: 1,
      indent: 40,
      endIndent: 40,
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

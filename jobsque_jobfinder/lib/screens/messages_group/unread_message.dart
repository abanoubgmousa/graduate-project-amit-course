import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/job_details/twitter_chat.dart';

class UnreadMessage extends StatefulWidget {
  const UnreadMessage({super.key});

  @override
  State<UnreadMessage> createState() => _UnreadMessageState();
}

class _UnreadMessageState extends State<UnreadMessage> {
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
        containerTextBulider(),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const TwitterChat()));
          },
          child: ListTile(
            leading: Badge(
                label: const Text("1"),
                backgroundColor: Colors.blue[800],
                alignment: AlignmentDirectional.topStart,
                child: Image.asset("assets/images/twetter_logo.png")),
            title: const Text(
              "Twitter",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: const Text(
              "Here is the link:http://zoom.com/abcdeefg",
              style: TextStyle(fontSize: 13),
            ),
            trailing: const Text(
              "12.39",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        dividerBuilder(),
        ListTile(
          leading: Badge(
              label: const Text("1"),
              backgroundColor: Colors.blue[800],
              alignment: AlignmentDirectional.topStart,
              child: Image.asset("assets/images/gojek.png")),
          title: const Text(
            "Gojek Indonesia",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: const Text(
            "List's keep in touch",
            style: TextStyle(fontSize: 13),
          ),
          trailing: const Text(
            "12.39",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        dividerBuilder(),
        ListTile(
          leading: Badge(
              label: const Text("1"),
              backgroundColor: Colors.blue[800],
              alignment: AlignmentDirectional.topStart,
              child: Image.asset("assets/images/dana.png")),
          title: const Text(
            "Dana",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: const Text(
            "Thank you David!",
            style: TextStyle(fontSize: 13),
          ),
          trailing: const Text(
            "Yesterday",
          ),
        ),
        dividerBuilder(),
      ]),
      bottomNavigationBar: bottomNavigationBulider(),
    );
  }

  Widget containerTextBulider() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(color: Colors.grey[300]),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text("Unread"),
          TextButton(
            onPressed: () {},
            child: const Text("Read all messages"),
          )
        ]));
  }

  Widget dividerBuilder() {
    return const Divider(
      thickness: 1,
      height: 3,
      color: Colors.grey,
      indent: 30,
      endIndent: 30,
    );
  }

  Widget containerIconBuilder() {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 250,
                margin: const EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Messages filters",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black)),
                        child: ListTile(
                          title: const Text("Unread"),
                          trailing: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const UnreadMessage()));
                            },
                            icon: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black)),
                        child: ListTile(
                          title: const Text("Spam"),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black)),
                        child: ListTile(
                          title: const Text("Archived"),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),
                    ]),
              );
            });
      },
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
}

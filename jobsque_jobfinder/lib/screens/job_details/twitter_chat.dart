import 'package:flutter/material.dart';

class TwitterChat extends StatefulWidget {
  const TwitterChat({super.key});

  @override
  State<TwitterChat> createState() => _TwitterChatState();
}

class _TwitterChatState extends State<TwitterChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(children: const [
          CircleAvatar(
              backgroundImage: AssetImage("assets/images/twitter.png"),
              radius: 20),
          SizedBox(
            width: 15,
          ),
          Text(
            "Twitter",
            style: TextStyle(color: Colors.black),
          ),
        ]),
        actions: [
          SizedBox(
              width: 60,
              child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Messages filters",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: ListTile(
                                        leading: const Icon(
                                            Icons.business_center_outlined),
                                        title: const Text("Unread"),
                                        trailing: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_forward_ios),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: ListTile(
                                        leading: const Icon(Icons.list_alt),
                                        title: const Text("Spam"),
                                        trailing: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_forward_ios),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: ListTile(
                                        leading: const Icon(Icons.mail_outline),
                                        title: const Text("Archived"),
                                        trailing: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_forward_ios),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: ListTile(
                                        leading:
                                            const Icon(Icons.notifications),
                                        title: const Text("Mute"),
                                        trailing: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_forward_ios),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: ListTile(
                                        leading:
                                            const Icon(Icons.download_outlined),
                                        title: const Text("Archive"),
                                        trailing: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_forward_ios),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: ListTile(
                                        leading: const Icon(
                                            Icons.delete_outline_sharp),
                                        title:
                                            const Text("Delete conversation"),
                                        trailing: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_forward_ios),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                          );
                        });
                  },
                  icon: const Icon(Icons.more_horiz)))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Divider(
                indent: 80,
                endIndent: 80,
                height: 1,
                color: Colors.grey,
                thickness: 5,
              ),
              Text("Today, Nov 13"),
              Divider(
                indent: 80,
                endIndent: 80,
                height: 1,
                color: Colors.grey,
                thickness: 5,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 50),
            padding: const EdgeInsets.all(20),
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300]),
            child: Column(
              children: [
                const Text(
                    "Hi Rafif!, I'm Melan the selection team\n from Twitter. Thank you for applying for a\n job at our company. We have announced\n that you are eligible for the interview\n stage."),
                const SizedBox(height: 10),
                Container(
                    alignment: Alignment.bottomRight,
                    child: const Text("10.18"))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 80, right: 50),
            padding: const EdgeInsets.all(20),
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[600]),
            child: Column(
              children: [
                const Text(
                  "Hi Melan,thank you for considering\nme,this is good newsfor me.",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Container(
                    alignment: Alignment.bottomRight,
                    child: const Text(
                      "10.18",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 50),
            padding: const EdgeInsets.all(20),
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300]),
            child: Column(
              children: [
                const Text(
                    "Hi Rafif!, I'm Melan the selection team\n from Twitter. Thank you for applying for a\n job at our company. We have announced\n that you are eligible for the interview\n stage."),
                const SizedBox(height: 10),
                Container(
                    alignment: Alignment.bottomRight,
                    child: const Text("10.18"))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 80, right: 50),
            padding: const EdgeInsets.all(20),
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[600]),
            child: Column(
              children: [
                const Text(
                  "Hi Melan,thank you for considering\nme,this is good newsfor me.",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Container(
                    alignment: Alignment.bottomRight,
                    child: const Text(
                      "10.18",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.attach_file)),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 8,
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                      hintText: "Write a message"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_voice_outlined)),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

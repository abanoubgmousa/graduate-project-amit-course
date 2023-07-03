import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/login_and_ceate_account_group/where_your_location.dart';

class TypeOfWorkAccount extends StatefulWidget {
  const TypeOfWorkAccount({super.key});

  @override
  State<TypeOfWorkAccount> createState() => _TypeOfWorkAccountState();
}

class _TypeOfWorkAccountState extends State<TypeOfWorkAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "What type of work are you \n interested in ?",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
              "Tell us what you're interested is so we can \n coustomise the app for your needs."),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 30),
                children: [
                  // first row
                  Container(
                    width: 150,
                    height: 130,
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                shape: BoxShape.circle),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "UI/UX Designer",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Container(
                    width: 150,
                    height: 130,
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                                shape: BoxShape.circle),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Ilustrator Designer",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  // secound row
                  Container(
                    width: 150,
                    height: 130,
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                                shape: BoxShape.circle),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Developer",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Container(
                    width: 150,
                    height: 130,
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                                shape: BoxShape.circle),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Management",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  // thrid row
                  Container(
                    width: 150,
                    height: 130,
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                                shape: BoxShape.circle),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Information \n Technology",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Container(
                    width: 150,
                    height: 130,
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                shape: BoxShape.circle),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Research and \n Analytics",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ]),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const WhereYourLocation()));
            },
            color: Colors.blue[700],
            minWidth: MediaQuery.of(context).size.width,
            height: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Text("Next"),
          ),
        ]),
      ),
    );
  }
}

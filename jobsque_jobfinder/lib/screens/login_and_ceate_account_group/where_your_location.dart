import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/login_and_ceate_account_group/finished_account.dart';
import 'package:swipable_toggle_switch/swipable_toggle_switch.dart';

class WhereYourLocation extends StatefulWidget {
  const WhereYourLocation({super.key});

  @override
  State<WhereYourLocation> createState() => _WhereYourLocationState();
}

class _WhereYourLocationState extends State<WhereYourLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Where are you perfered \n Location?",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
              "Tell us what you're interested is so we can \n coustomise the app for your needs."),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                child: SwipableToggleSwitch(
                  values: const ["Work From Office", "Remote Work"],
                  width: 1500,
                  onToggleCallback: (value) {},
                  boxShape: BoxShape.rectangle,
                  buttonColor: Colors.blue,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Select the country you want for your job"),
          Row(
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.blue[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.blue, width: 2)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/usa.jpg",
                    width: 40,
                    height: 40,
                  ),
                  const Text(
                    "United States",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.grey[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/indonesia.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Indonesia",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ],
          ),
          Row(
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.grey[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/chinese.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Chinese",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.blue[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.blue, width: 2)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/duch.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Duch",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ],
          ),
          Row(
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.blue[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.blue, width: 2)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/germany.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Germany",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              MaterialButton(
                minWidth: 150,
                onPressed: () {},
                color: Colors.grey[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/france.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "France",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ],
          ),
          Row(
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.grey[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/england.jpeg",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "England",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.grey[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/chinese.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Chinese",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.grey[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/indonesia.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Indonesia",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ],
          ),
          Row(
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.blue[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.blue, width: 2)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/portgal.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Portgal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              MaterialButton(
                minWidth: 150,
                onPressed: () {},
                color: Colors.blue[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.blue)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/korean.jpg",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Korean",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ],
          ),
          Row(
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.grey[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/duch.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Dutch",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              MaterialButton(
                minWidth: 150,
                onPressed: () {},
                color: Colors.grey[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey)),
                // image and text
                child: Row(children: [
                  Image.asset(
                    "assets/images/ksa.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "KSA",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FinishedAccount()));
              },
              color: Colors.blue[600],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              child: const Text("Next"),
            ),
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/profile_group/edit_profile.dart';
import 'package:jobsque_jobfinder/screens/profile_group/help_center.dart';
import 'package:jobsque_jobfinder/screens/profile_group/language.dart';
import 'package:jobsque_jobfinder/screens/profile_group/login_and_security.dart';
import 'package:jobsque_jobfinder/screens/profile_group/notifications.dart';
import 'package:jobsque_jobfinder/screens/profile_group/portfolio.dart';
import 'package:jobsque_jobfinder/screens/profile_group/privacy_policy.dart';
import 'package:jobsque_jobfinder/screens/profile_group/trems_and_conditions.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header of layout to image profile
            headerScreenBulider(),
            /////////////////////////////////////////////////////////////////////////////
            // name profile and job title
            const SizedBox(height: 50),
            const Center(
              child: Text(
                "Rafif Dian Alxelingga",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Text("Senior UI/UX Designer"),
            const SizedBox(
              height: 25,
            ),
            // main container to show applied,reviewed,cintacts
            containerOfActions(),
            // text About and TextButton of Edit
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text("About")),
                TextButton(onPressed: () {}, child: const Text("Edit")),
              ],
            ),
            const Text(
              "AboutI'm Rafif Dian Axelingga, I’m UI/UX Designer, I have\n experience designing UI Design for approximately 1\n year. I am currently joining the Vektora studio team\n based in Surakarta, Indonesia.I am a person who has a\n high spirit and likes to work to achieve what I dream of.",
            ),
            const SizedBox(height: 40),
            containerTextBulider("General"),
            const SizedBox(height: 40),
            // list tile viewer

            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EditProfile()));
              },
              leading: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 146, 187, 253),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.person_outline,
                  color: Colors.blue,
                ),
              ),
              title: const Text(
                "Edit Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ),
            dividerBulider(),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Portfolio()));
              },
              leading: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 146, 187, 253),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.snippet_folder,
                  color: Colors.blue,
                ),
              ),
              title: const Text(
                "Portfolio",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ),
            dividerBulider(),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Language()));
              },
              leading: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 146, 187, 253),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.language,
                  color: Colors.blue,
                ),
              ),
              title: const Text(
                "Language",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ),
            dividerBulider(),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Notifications()));
              },
              leading: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 146, 187, 253),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.blue,
                ),
              ),
              title: const Text(
                "Notifications",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ),
            dividerBulider(),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginAndSecurity()));
              },
              leading: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 146, 187, 253),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.lock_outline,
                  color: Colors.blue,
                ),
              ),
              title: const Text(
                "Login & Security",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ),
            dividerBulider(),
///////////////////////////////////////////////////////////////////////////////////
            // others text bottom of screen
            const SizedBox(height: 40),
            containerTextBulider("Others"),
            const SizedBox(height: 40),
            //anther list tile in the bottom of screen
            ListTile(
              onTap: () {},
              title: const Text(
                "Accesibility",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ),
            dividerBulider(),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HelpSenter()));
              },
              title: const Text(
                "Help Center",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ),
            dividerBulider(),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TremsAndConditions()));
              },
              title: const Text(
                "Terms & Conditions",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ),
            dividerBulider(),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PrivacyPolicy()));
              },
              title: const Text(
                "Privacy Policy",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ),
            dividerBulider(),
          ],
        ),
      ),
      bottomNavigationBar: buttomNavBar(),
    );
  }

  Widget buttomNavBar() {
    return BottomNavigationBar(
        currentIndex: 4,
        onTap: (value) {
          setState(() {
            value = 4;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_outlined), label: "Applied"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ]);
  }

  Widget dividerBulider() {
    return const Divider(
      color: Colors.grey,
      height: 2,
      indent: 30,
      endIndent: 30,
    );
  }

  Widget containerTextBulider(String? text) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      color: Colors.grey[300],
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Text(
        text!,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }

  Widget containerOfActions() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      color: Colors.grey[100],
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // first column in row
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                height: 30,
              ),
              Text(
                "Applied",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "46",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                height: 30,
              ),
              Text(
                "Reviewed",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "23",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                height: 30,
              ),
              Text(
                "Contacted",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "16",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget headerScreenBulider() {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        color: Colors.blue[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            const Text(
              "Profile",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
      Positioned(
        bottom: -100,
        left: 0,
        right: 0,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 100,
          child: Image.asset("assets/images/Profile.png"),
        ),
      )
    ]);
  }
}

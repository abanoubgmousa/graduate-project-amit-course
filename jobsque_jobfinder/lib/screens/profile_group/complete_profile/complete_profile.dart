import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/profile_group/complete_profile/education.dart';
import 'package:jobsque_jobfinder/screens/profile_group/edit_profile.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ComplteProfile extends StatefulWidget {
  const ComplteProfile({super.key});

  @override
  State<ComplteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<ComplteProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Complete Profile",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(
            child: SimpleCircularProgressBar(
              valueNotifier: ValueNotifier(50),
              backStrokeWidth: 5,
              mergeMode: true,
              backColor: const Color.fromARGB(255, 216, 216, 216),
              progressStrokeWidth: 7,
              maxValue: 100,
              progressColors: const [Colors.blue],
              onGetText: (value) {
                return const Text(
                  "50",
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "2/4 Completed",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Complete your profile before applying for a job",
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue[50],
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const EditProfile()));
                    },
                    title: const Text(
                      "Personal Details",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                        "Full name,email,phone number,and your address"),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward)),
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue[700],
                        radius: 20,
                        child: const Icon(Icons.check)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue[50],
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Eduacation()));
                    },
                    title: const Text(
                      "Educations",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                        "Enter your educational history to be considered by the recruiter"),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward)),
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue[700],
                        radius: 20,
                        child: const Icon(Icons.check)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ListTile(
                    title: Text(
                      "Experience",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "Enter your work experience to be considered by the recruiter"),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                    leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 20,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ListTile(
                    title: Text(
                      "prtfolio",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "Create your portfolio,Applying for various types of jobs is easier"),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                    leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 20,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/job_details/bio_data.dart';
import 'package:jobsque_jobfinder/screens/job_details/type_of_work.dart';
import 'package:jobsque_jobfinder/screens/job_details/upload_prtfolio.dart';

class Active extends StatefulWidget {
  const Active({super.key});

  @override
  State<Active> createState() => _ActiveState();
}

class _ActiveState extends State<Active> {
  GlobalKey descriptionTab = GlobalKey();
  GlobalKey companyTab = GlobalKey();
  bool descriptionButton = true;
  bool companyButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBulider(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(5),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 5),
            ///////////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                jobTypeButtonBulider(
                    nameButton: "Active",
                    buttonColor: Colors.blue[900],
                    textColor: Colors.white),
                jobTypeButtonBulider(
                    nameButton: "Rejected",
                    buttonColor: Colors.blue[900],
                    textColor: Colors.white),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(children: [
                const SizedBox(height: 10),
////////////////////////////////////////////////////////////////////////////////
                // container of 3 jobs text in a header of page
                treeJobsBulider(),
////////////////////////////////////////////////////////////////////////////////

                const SizedBox(height: 10),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BioData()));
                  },
                  leading: Image.asset("assets/images/ui_ux1.jpg"),
                  title: const Text(
                    "UI/UX Designer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("spectrum.Jakarta,Indonesia"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                      size: 35,
                    ),
                    color: Colors.blue[700],
                  ),
                ),
////////////////////////////////////////////////////////////////////////////////
                // list tile of 1 item of job
                Row(
                  children: [
                    jobTypeButtonBulider(nameButton: "Fulltime"),
                    const SizedBox(
                      width: 10,
                    ),
                    jobTypeButtonBulider(nameButton: "Remote"),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text("Posted 2 days ago")
                  ],
                ),

////////////////////////////////////////////////////////////////////////////////
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        rectangleitemBulider(
                            circelNumber: "1", text: "Biodata"),
                        rectangleitemBulider(
                            circelNumber: "2", text: "Type of work"),
                        rectangleitemBulider(
                            circelNumber: "3", text: "Upload portfolio"),
                      ]),
                ),
                dividerBlider(),
                const SizedBox(height: 10),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TypeOfWork()));
                  },
                  leading: Image.asset("assets/images/ui_ux2.png"),
                  title: const Text(
                    "UI/UX Designer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("spectrum.Jakarta,Indonesia"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                      size: 35,
                    ),
                    color: Colors.blue[700],
                  ),
                ),
////////////////////////////////////////////////////////////////////////////////
                // list tile of 1 item of job
                Row(
                  children: [
                    jobTypeButtonBulider(nameButton: "Fulltime"),
                    const SizedBox(
                      width: 10,
                    ),
                    jobTypeButtonBulider(nameButton: "Remote"),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text("Posted 2 days ago")
                  ],
                ),

////////////////////////////////////////////////////////////////////////////////
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        rectangleitemBulider(
                            circelNumber: "1", text: "Biodata"),
                        rectangleitemBulider(
                            circelNumber: "2", text: "Type of work"),
                        rectangleitemBulider(
                            circelNumber: "3", text: "Upload portfolio"),
                      ]),
                ),
                dividerBlider(),
                const SizedBox(height: 10),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UploadPrtfolio()));
                  },
                  leading: Image.asset("assets/images/ui_ux3.png"),
                  title: const Text(
                    "UI/UX Designer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("spectrum.Jakarta,Indonesia"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                      size: 35,
                    ),
                    color: Colors.blue[700],
                  ),
                ),
////////////////////////////////////////////////////////////////////////////////
                // list tile of 1 item of job
                Row(
                  children: [
                    jobTypeButtonBulider(nameButton: "Fulltime"),
                    const SizedBox(
                      width: 10,
                    ),
                    jobTypeButtonBulider(nameButton: "Remote"),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text("Posted 2 days ago")
                  ],
                ),

////////////////////////////////////////////////////////////////////////////////
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        rectangleitemBulider(
                            circelNumber: "1", text: "Biodata"),
                        rectangleitemBulider(
                            circelNumber: "2", text: "Type of work"),
                        rectangleitemBulider(
                            circelNumber: "3", text: "Upload portfolio"),
                      ]),
                ),
                dividerBlider(),
              ]),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: bottomNavigationBulider(),
    );
  }

  PreferredSizeWidget appBarBulider() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.black),
      title: const Text(
        "Applied Job",
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      centerTitle: true,
    );
  }

  Widget rectangleitemBulider({String? circelNumber, String? text}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue[700],
          child: Text(circelNumber!),
        ),
        const SizedBox(height: 5),
        Text(
          text!,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }

  Widget jobTypeButtonBulider(
      {String? nameButton, Color? buttonColor, Color? textColor}) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: () {},
      color: buttonColor,
      child: Text(
        nameButton!,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Widget treeJobsBulider() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      height: 30,
      decoration: BoxDecoration(color: Colors.grey[300]),
      child: const Text("3 Jobs"),
    );
  }

  Widget dividerBlider() {
    return const Divider(
      endIndent: 10,
      indent: 10,
      color: Colors.grey,
    );
  }

  Widget bottomNavigationBulider() {
    return BottomNavigationBar(
        currentIndex: 2,
        onTap: (value) {
          setState(() {
            value = 2;
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

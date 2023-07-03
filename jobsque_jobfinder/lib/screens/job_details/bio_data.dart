import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/job_details/type_of_work.dart';

class BioData extends StatefulWidget {
  const BioData({super.key});

  @override
  State<BioData> createState() => _BioDataState();
}

class _BioDataState extends State<BioData> {
  List<DropdownMenuItem> item = [
    DropdownMenuItem(
      child: Image.asset(
        "assets/images/usa.jpg",
        width: 30,
        height: 30,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Apply Job",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue[500],
                  radius: 25,
                  child: const Icon(
                    Icons.check,
                    size: 35,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all()),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all()),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                SizedBox(width: 40),
                Text(
                  "Biodata",
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(width: 65),
                Text("Type of work"),
                SizedBox(width: 50),
                Text("Upload portfolio"),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Biodata",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Fill in your bio data correctly",
            ),
            const SizedBox(height: 20),
            const Text(
              "Full Name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            formFeildBulider("Rafif Dian Axelingga"),
            const SizedBox(height: 20),
            const Text(
              "Email",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            formFeildBulider("Ranjingan,Wagon,Wasington City"),
            const SizedBox(height: 20),
            const Text(
              "No.Handphone",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            formFeildBulider("0100-666-7234",
                prefix: Row(children: [
                  DropdownButton(
                      items: item,
                      onChanged: (value) {
                        value = item;
                      }),
                ])),
            const SizedBox(height: 50),
            buttonBulider(),
          ],
        ),
      ),
    );
  }

  Widget formFeildBulider(String hintText, {Widget? prefix}) {
    return TextFormField(
        decoration: InputDecoration(
      prefixIcon: prefix,
      contentPadding: const EdgeInsets.only(left: 20),
      hintText: hintText,
      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ));
  }

  Widget buttonBulider() {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const TypeOfWork()));
      },
      color: Colors.blue,
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: const Text(
        "Next",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

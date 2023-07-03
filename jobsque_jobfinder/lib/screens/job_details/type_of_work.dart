import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/job_details/upload_prtfolio.dart';

class TypeOfWork extends StatefulWidget {
  const TypeOfWork({super.key});

  @override
  State<TypeOfWork> createState() => _TypeOfWorkState();
}

class _TypeOfWorkState extends State<TypeOfWork> {
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
      body: SingleChildScrollView(
        child: Container(
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
                        border: Border.all(color: Colors.blue)),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: Text(
                        "2",
                        style: TextStyle(color: Colors.blue),
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
                  Text(
                    "Type of work",
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(width: 50),
                  Text("Upload portfolio"),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Type of work",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Fill in your bio data correctly",
              ),
              const SizedBox(height: 20),
              itemListTileBuilder(
                  "Senior UX Designer", "CV.pdf * Portfolio.pdf"),
              const SizedBox(height: 10),
              itemListTileBuilder(
                  "Senior UI Designer", "CV.pdf * Portfolio.pdf"),
              const SizedBox(height: 10),
              itemListTileBuilder("Graphic Designer", "CV.pdf * Portfolio.pdf"),
              const SizedBox(height: 10),
              itemListTileBuilder(
                  "Front-end Developer", "CV.pdf * Portfolio.pdf"),
              const SizedBox(height: 20),
              buttonBulider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemListTileBuilder(String title, String subTitle, {Color? color}) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subTitle),
        trailing: Radio(
          onChanged: (value) {},
          value: false,
          groupValue: "workType",
        ),
      ),
    );
  }

  Widget buttonBulider() {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const UploadPrtfolio()));
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

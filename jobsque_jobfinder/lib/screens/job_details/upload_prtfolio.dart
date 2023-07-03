import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/job_details/job_details_finished.dart';

class UploadPrtfolio extends StatefulWidget {
  const UploadPrtfolio({super.key});

  @override
  State<UploadPrtfolio> createState() => _UploadPrtfolioState();
}

class _UploadPrtfolioState extends State<UploadPrtfolio> {
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
                  SizedBox(width: 70),
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
                "Upload Porfolio",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Fill in your bio data correctly",
              ),
              const SizedBox(height: 20),
              const Text(
                "Upload CV",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.grey, width: 1)),
                leading: Image.asset("assets/images/file_portfolio.png"),
                title: const Text("UI/UX Designer"),
                subtitle: const Text("cv.pdf 300KB"),
                trailing: Wrap(children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.border_color_outlined,
                      color: Colors.blue,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.highlight_off,
                      color: Colors.red,
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Other File",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    shape: BoxShape.rectangle,
                    color: const Color.fromARGB(255, 193, 225, 249)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue[300],
                      child: Icon(
                        Icons.upload_file_outlined,
                        size: 30,
                        color: Colors.blue[800],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Upload your other file",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text("Max.file size 10 MB"),
                    const SizedBox(height: 20),
                    MaterialButton(
                      onPressed: () {},
                      minWidth: MediaQuery.of(context).size.width,
                      height: 50,
                      color: Colors.blue[200],
                      shape: const StadiumBorder(
                          side: BorderSide(width: 1, color: Colors.blue)),
                      elevation: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.cloud_upload_outlined,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Add file",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              buttonBulider()
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonBulider() {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const JobDetailsFinished()));
      },
      color: Colors.blue,
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: const Text(
        "Submit",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

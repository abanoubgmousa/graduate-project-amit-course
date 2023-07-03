import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/job_details/bio_data.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  GlobalKey descriptionTab = GlobalKey();
  GlobalKey companyTab = GlobalKey();
  GlobalKey peopleTab = GlobalKey();
  bool descriptionButton = true;
  bool companyButton = true;
  bool peopleButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Job Detail",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.bookmark,
            color: Colors.blue,
            size: 35,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(5),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Image.asset(
                "assets/images/twitter.png",
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(height: 5),
            const Center(
              child: Text(
                "Senior UI Designer",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            const Center(
              child: Text(
                "Twitter.Jakarta,Indonesia",
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Fulltime",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(width: 5),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Onsite",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(width: 5),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Senior",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            ///////////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  key: descriptionTab,
                  onPressed: () {
                    setState(() {
                      descriptionButton = !descriptionButton;
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(children: const [
                          Text(
                            "Job description",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "A job description template is a reusable model that can be tailored to detail the specific requirements, responsibilities, job duties, and skills required to perform a role. It typically includes a list of common daily tasks, equipment or tools used, who the role reports to, and the overall goals of the role."),
                          Text(
                            "Job Requiered",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "A great job description template makes it simple to list the job duties and responsibilities for every job in your company. Our standard job description template in Word format is great for describing a position internally and can be used as the basis to create a job posting template as well.Better job descriptions attract better candidates. Optimized for job board approval and SEO, our 1000+ job description templates boost exposure, provide inspiration and speed up hiring. Rich in the right kind of content, they also lead to more qualified applicants."),
                        ]),
                      );
                    });
                  },
                  color:
                      descriptionButton ? Colors.blue[900] : Colors.grey[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Decription",
                    style: TextStyle(
                        color: descriptionButton ? Colors.white : Colors.black),
                  ),
                ),
                MaterialButton(
                  key: companyTab,
                  onPressed: () {
                    setState(() {
                      companyButton = !companyButton;

                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(children: const [
                          Text(
                            "Job description",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "A job description template is a reusable model that can be tailored to detail the specific requirements, responsibilities, job duties, and skills required to perform a role. It typically includes a list of common daily tasks, equipment or tools used, who the role reports to, and the overall goals of the role."),
                          Text(
                            "Job Requiered",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "A great job description template makes it simple to list the job duties and responsibilities for every job in your company. Our standard job description template in Word format is great for describing a position internally and can be used as the basis to create a job posting template as well.Better job descriptions attract better candidates. Optimized for job board approval and SEO, our 1000+ job description templates boost exposure, provide inspiration and speed up hiring. Rich in the right kind of content, they also lead to more qualified applicants."),
                        ]),
                      );
                    });
                  },
                  color: companyButton ? Colors.blue[900] : Colors.grey[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Company",
                    style: TextStyle(
                        color: companyButton ? Colors.white : Colors.black),
                  ),
                ),
                MaterialButton(
                  key: peopleTab,
                  onPressed: () {
                    setState(() {
                      peopleButton = !peopleButton;
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(children: const [
                          Text(
                            "Job description",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "A job description template is a reusable model that can be tailored to detail the specific requirements, responsibilities, job duties, and skills required to perform a role. It typically includes a list of common daily tasks, equipment or tools used, who the role reports to, and the overall goals of the role."),
                          Text(
                            "Job Requiered",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "A great job description template makes it simple to list the job duties and responsibilities for every job in your company. Our standard job description template in Word format is great for describing a position internally and can be used as the basis to create a job posting template as well.Better job descriptions attract better candidates. Optimized for job board approval and SEO, our 1000+ job description templates boost exposure, provide inspiration and speed up hiring. Rich in the right kind of content, they also lead to more qualified applicants."),
                        ]),
                      );
                    });
                  },
                  color: peopleButton ? Colors.blue[900] : Colors.grey[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "People",
                    style: TextStyle(
                        color: peopleButton ? Colors.white : Colors.black),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: ListView(children: const [
                Text(
                  "Job description",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                    "A job description template is a reusable model that can be tailored to detail the specific requirements, responsibilities, job duties, and skills required to perform a role. It typically includes a list of common daily tasks, equipment or tools used, who the role reports to, and the overall goals of the role."),
                Text(
                  "Job Requiered",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                    "A great job description template makes it simple to list the job duties and responsibilities for every job in your company. Our standard job description template in Word format is great for describing a position internally and can be used as the basis to create a job posting template as well.Better job descriptions attract better candidates. Optimized for job board approval and SEO, our 1000+ job description templates boost exposure, provide inspiration and speed up hiring. Rich in the right kind of content, they also lead to more qualified applicants."),
              ]),
            ),
            buttonBulider()
          ]),
        ),
      ),
    );
  }

  Widget buttonBulider() {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const BioData()));
      },
      color: Colors.blue[700],
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: const Text(
        "Apply Now",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

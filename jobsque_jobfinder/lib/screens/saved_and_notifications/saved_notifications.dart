import 'package:flutter/material.dart';

class SavedNotificarions extends StatefulWidget {
  const SavedNotificarions({super.key});

  @override
  State<SavedNotificarions> createState() => _SavedNotificarionsState();
}

class _SavedNotificarionsState extends State<SavedNotificarions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Notifications",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Column(children: [
          containerMainTitle(text: "New"),
          dividerBulider(),
          listTileBulider(image: "assets/images/dana.png", title: "Dana"),
          dividerBulider(),
          listTileBulider(image: "assets/images/shoop.png", title: "Shoope"),
          dividerBulider(),
          listTileBulider(image: "assets/images/slak.png", title: "Slack"),
          dividerBulider(),
          listTileBulider(
              image: "assets/images/face_logo.png", title: "Faceboook"),
          dividerBulider(),
          containerMainTitle(text: "Yesterday"),
          dividerBulider(),
          listOfYesterdayBulider(
              title: "Email setup successful",
              icon: Icons.mail,
              trailing: "10.00AM",
              subTitle:
                  "Your email setup was successful with the following details:Your new email is rafifdianganz@gmail.com"),
          dividerBulider(),
          listOfYesterdayBulider(
              title: "Willcome to Jobsque",
              icon: Icons.youtube_searched_for_outlined,
              trailing: "8.00AM",
              subTitle:
                  "Hello Rafif Dian Axellingga,thank you for registering Jobsque.Enjoy the various features that...."),
          dividerBulider(),
        ]),
      ),
    );
  }

  Widget listOfYesterdayBulider(
      {IconData? icon, String? subTitle, String? trailing, String? title}) {
    return ListTile(
      title: Text(title!),
      subtitle: Text(subTitle!),
      trailing: Text(trailing!),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blue[300],
        ),
        child: const Icon(
          Icons.mail_outline,
          size: 30,
        ),
      ),
    );
  }

  Widget listTileBulider({String? image, String? title}) {
    return ListTile(
      leading: Image.asset(
        image!,
        width: 50,
        height: 50,
      ),
      title: Text(
        title!,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text("Posted new design jobs"),
      trailing: const Text("10.00AM"),
    );
  }

  Widget containerMainTitle({String? text}) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(10),
      color: Colors.grey[300],
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Text(
        text!,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }

  Widget dividerBulider() {
    return const Divider(
      color: Colors.grey,
      height: 2,
      indent: 30,
      endIndent: 30,
    );
  }
}

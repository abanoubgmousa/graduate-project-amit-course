import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
          containerMainTitle(text: "Job notification"),
          switchListTileBulider(title: "Your Job Search Alert", value: true),
          dividerBulider(),
          switchListTileBulider(title: "Job Application Update", value: true),
          dividerBulider(),
          switchListTileBulider(
              title: "Job Application Reminders", value: false),
          dividerBulider(),
          switchListTileBulider(
              title: "Job You May Interested In", value: true),
          dividerBulider(),
          switchListTileBulider(title: "Job Seeker Updates", value: false),
          dividerBulider(),
          containerMainTitle(text: "Other Notification"),
          switchListTileBulider(title: "Show Profile", value: true),
          dividerBulider(),
          switchListTileBulider(title: "All Message", value: true),
          dividerBulider(),
          switchListTileBulider(title: "Message Nudges", value: true),
          dividerBulider(),
        ]),
      ),
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
        style: const TextStyle(fontSize: 20),
      ),
    );
  }

  Widget switchListTileBulider({String? title, bool? value}) {
    return SwitchListTile(
      value: value!,
      onChanged: (value) {},
      title: Text(title!),
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

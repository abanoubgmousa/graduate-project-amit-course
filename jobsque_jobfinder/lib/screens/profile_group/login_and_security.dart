import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/profile_group/change_password_profile.dart';
import 'package:jobsque_jobfinder/screens/profile_group/email_address_profile.dart';
import 'package:jobsque_jobfinder/screens/profile_group/phone_number_profile.dart';

class LoginAndSecurity extends StatefulWidget {
  const LoginAndSecurity({super.key});

  @override
  State<LoginAndSecurity> createState() => _LoginAndSecurityState();
}

class _LoginAndSecurityState extends State<LoginAndSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            "Login and security",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Column(children: [
          accountAccessBulider(),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EmailAddress()));
            },
            title: const Text("Email address"),
            trailing: Wrap(children: [
              const Text("rafifdian12@gmail.com"),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              )
            ]),
          ),
          dividerBulider(),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PhoneNumberProfile()));
            },
            title: const Text("Phone number"),
            trailing: Wrap(children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              )
            ]),
          ),
          dividerBulider(),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ChangePassword()));
            },
            title: const Text("Change password"),
            trailing: Wrap(children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              )
            ]),
          ),
          dividerBulider(),
          listTile(Icons.arrow_forward, "Two-step verification", "Non active"),
          dividerBulider(),
          listTile(Icons.arrow_forward, "Face ID", ""),
          dividerBulider(),
        ]),
      ),
    );
  }

  Widget accountAccessBulider() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(10),
      color: Colors.grey[300],
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: const Text(
        "Account access",
        style: TextStyle(fontSize: 20),
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

  Widget listTile(IconData icon, String title, String text) {
    return ListTile(
      title: Text(title),
      trailing: Wrap(children: [
        Text(text),
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.black,
          ),
        )
      ]),
    );
  }
}

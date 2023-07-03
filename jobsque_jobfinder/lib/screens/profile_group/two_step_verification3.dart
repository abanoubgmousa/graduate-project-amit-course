import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/profile_group/two_step_verification4.dart';

class TwoStepVerification3 extends StatefulWidget {
  const TwoStepVerification3({super.key});

  @override
  State<TwoStepVerification3> createState() => _TwoStepVerification3State();
}

class _TwoStepVerification3State extends State<TwoStepVerification3> {
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
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            "Phone number",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Add phone number",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const Text(
            "We will send a verification code to this number",
          ),
          const SizedBox(height: 20),
          formFeildBulider("0100-666-7234",
              prefix: Row(children: [
                DropdownButton(
                    items: item,
                    onChanged: (value) {
                      value = item;
                    }),
              ])),
          const SizedBox(height: 20),
          const Text(
            "Enter your password",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          formFeildBulider("********",
              prefix: const Icon(Icons.lock_outline),
              suffix: const Icon(Icons.visibility_off_outlined)),
          const SizedBox(height: 300),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TwoStepVerification4()));
            },
            color: Colors.blue[700],
            minWidth: MediaQuery.of(context).size.width,
            height: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Text(
              "Send code",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }

  Widget formFeildBulider(String hintText, {Widget? prefix, Widget? suffix}) {
    return TextFormField(
        decoration: InputDecoration(
      prefixIcon: prefix,
      suffixIcon: suffix,
      contentPadding: const EdgeInsets.only(left: 20),
      hintText: hintText,
      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ));
  }
}

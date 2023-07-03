import 'package:flutter/material.dart';

class PhoneNumberProfile extends StatefulWidget {
  const PhoneNumberProfile({super.key});

  @override
  State<PhoneNumberProfile> createState() => _PhoneNumberProfileState();
}

class _PhoneNumberProfileState extends State<PhoneNumberProfile> {
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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 10),
            const Text("Main phone number"),
            const SizedBox(height: 10),
            formFeildBulider("0100-666-7234",
                prefix: Row(children: [
                  DropdownButton(
                      items: item,
                      onChanged: (value) {
                        value = item;
                      }),
                ])),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Use the phone number to reset your\n password"),
                Switch(
                    value: true,
                    onChanged: (value) {
                      setState(() {
                        value = value;
                      });
                    })
              ],
            ),
            const SizedBox(height: 350),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue[700],
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            )
          ]),
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
}

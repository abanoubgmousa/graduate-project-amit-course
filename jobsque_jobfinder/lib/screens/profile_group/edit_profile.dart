import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Edit Porfile",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Center(
                child: stackBulider(),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text("name"),
              const SizedBox(height: 10),
              formFeildBulider("Rafif Dian Axelingga"),
              const SizedBox(height: 10),
              const Text("Bio"),
              const SizedBox(height: 10),
              formFeildBulider("Senior UI/UX Designer"),
              const SizedBox(height: 10),
              const Text("Address"),
              const SizedBox(height: 10),
              formFeildBulider("Ranjingan,Wagon,Wasington City"),
              const SizedBox(height: 10),
              const Text("No.Handphone"),
              const SizedBox(height: 10),
              formFeildBulider("0100-666-7234",
                  prefix: Row(children: [
                    DropdownButton(
                        items: item,
                        onChanged: (value) {
                          value = item;
                        }),
                  ])),
              const SizedBox(height: 30),
              buttonBulider(),
            ],
          ),
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

  Widget stackBulider() {
    return Stack(clipBehavior: Clip.none, children: [
      Image.asset("assets/images/Profile.png"),
      const Positioned(
        left: 0,
        right: 0,
        top: 0,
        bottom: 0,
        child: Icon(
          Icons.camera_alt_outlined,
          size: 35,
          color: Colors.white,
        ),
      ),
      Positioned(
          bottom: -30,
          child:
              TextButton(onPressed: () {}, child: const Text("Change Photo"))),
    ]);
  }

  Widget buttonBulider() {
    return MaterialButton(
      onPressed: () {},
      color: Colors.blue,
      minWidth: MediaQuery.of(context).size.width,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: const Text(
        "Save",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

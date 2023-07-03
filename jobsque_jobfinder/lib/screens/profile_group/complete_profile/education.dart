import 'package:flutter/material.dart';

class Eduacation extends StatefulWidget {
  const Eduacation({super.key});

  @override
  State<Eduacation> createState() => _EduacationState();
}

class _EduacationState extends State<Eduacation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBulider(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleText(title: "University"),
                    textFormBulider(hintText: "Northern Michigan University"),
                    const SizedBox(height: 5),
                    titleText(title: "Title"),
                    textFormBulider(hintText: "Bachelor"),
                    const SizedBox(height: 5),
                    titleText(title: "Start Year"),
                    textFormBulider(hintText: "December 2019"),
                    const SizedBox(height: 5),
                    titleText(title: "End Year"),
                    textFormBulider(hintText: "December 2022"),
                    const SizedBox(height: 15),
                    saveButton(),
                  ]),
            ),
            containerBulider()
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget appBarBulider() {
    return AppBar(
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      centerTitle: true,
      backgroundColor: Colors.white,
      title: const Text(
        "Education",
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget containerBulider() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.asset("assets/images/university.png"),
        title: const Text("University of Arizona"),
        subtitle: const Text("Bachelor of Art Design\n2012 - 2015"),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.border_color_outlined,
              color: Colors.blue,
            )),
      ),
    );
  }

  Widget titleText({String? title}) {
    return Text(
      title!,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget saveButton() {
    return MaterialButton(
      onPressed: () {},
      color: Colors.blue[700],
      minWidth: MediaQuery.of(context).size.width,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: const Text(
        "Save",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget textFormBulider({String? hintText}) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontWeight: FontWeight.bold),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}

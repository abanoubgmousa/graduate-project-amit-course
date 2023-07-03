import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String? languages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Language",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(children: [
          listTileBuilder("assets/images/england.jpeg", "English", "English"),
          dividerBulider(),
          listTileBuilder(
              "assets/images/indonesia.png", "Indunesia", "Indunesia"),
          dividerBulider(),
          listTileBuilder("assets/images/ksa.png", "Arabic", "Arabic"),
          dividerBulider(),
          listTileBuilder("assets/images/chinese.png", "Chinese", "Chinese"),
          dividerBulider(),
          listTileBuilder("assets/images/duch.png", "Duch", "Duch"),
          dividerBulider(),
          listTileBuilder("assets/images/france.png", "French", "French"),
          dividerBulider(),
          listTileBuilder("assets/images/germany.png", "Germany", "Germany"),
          dividerBulider(),
          listTileBuilder("assets/images/japan.png", "Japan", "Japan"),
          dividerBulider(),
          listTileBuilder("assets/images/korean.jpg", "Korean", "Korean"),
          dividerBulider(),
          listTileBuilder(
              "assets/images/portgal.png", "Portugese", "Portugese"),
          dividerBulider(),
        ]),
      ),
    );
  }

  Widget listTileBuilder(String leading, String text, String value) {
    return ListTile(
      leading: Image.asset(
        leading,
        width: 20,
        height: 20,
      ),
      title: Text(text),
      trailing: Radio(
          value: value,
          groupValue: languages,
          onChanged: (value) {
            setState(() {
              languages = value;
            });
          }),
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

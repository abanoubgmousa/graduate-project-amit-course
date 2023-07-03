import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Portfolio",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(children: [
          const SizedBox(height: 15),
          const Text(
            "Add portfolio here",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
        ]),
      ),
    );
  }
}

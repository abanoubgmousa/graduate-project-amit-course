import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/login_and_ceate_account_group/type_of_work_account.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(5),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/spalsh_screen.png",
                width: 170,
                height: 100,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: const Text(
                textAlign: TextAlign.start,
                "Create Account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                    "Please Create an account to find your dream job")),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                  decoration: const InputDecoration(
                      label: Icon(Icons.person_outline),
                      border: OutlineInputBorder(),
                      hintText: "Username")),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                  decoration: const InputDecoration(
                      label: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(),
                      hintText: "Email")),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                  decoration: const InputDecoration(
                      label: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(),
                      hintText: "Password")),
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text("Password must be at least 8 characters")),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(onPressed: () {}, child: const Text("Login"))
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                disabledColor: Colors.grey,
                color: const Color.fromARGB(255, 0, 140, 255),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const TypeOfWorkAccount()));
                },
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                minWidth: MediaQuery.of(context).size.width,
                child: const Text("Create Account"),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Divider(
                    indent: 10,
                    endIndent: 10,
                    color: Colors.grey,
                    height: 50,
                  ),
                ),
                Text("Or Login With Account"),
                Expanded(
                  child: Divider(
                    indent: 10,
                    endIndent: 10,
                    color: Colors.grey,
                    height: 5,
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              MaterialButton(
                  onPressed: () {},
                  shape: const OutlineInputBorder(),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/google.png"),
                            radius: 15,
                          )),
                      const Text("Google")
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                      onPressed: () {},
                      shape: const OutlineInputBorder(),
                      child: Row(
                        children: const [
                          InkWell(
                              child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/facebook.png"),
                            radius: 15,
                          )),
                          Text("Facebook")
                        ],
                      )),
                ],
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/forgot_password/check_your_email.dart';
import 'package:jobsque_jobfinder/screens/login_and_ceate_account_group/login_screen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Container(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/images/spalsh_screen.png",
              width: 170,
              height: 100,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Reset Password",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "Enter the email address you used when you\n joined and we’ll send you instructions to reset\n your password."),
          const SizedBox(
            height: 30,
          ),
          textFormBulider(),
          const SizedBox(
            height: 260,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Your remember your password"),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  },
                  child: const Text("Login"))
            ],
          ),
          buttonBulider()
        ]),
      ),
    );
  }

  Widget buttonBulider() {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const CheckYourEmail()));
      },
      color: Colors.blue[700],
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: const Text(
        "Request password reset",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget textFormBulider() {
    return TextFormField(
      decoration: const InputDecoration(
          hintText: "Enter your email",
          prefixIcon: Icon(Icons.mail_outline),
          border: OutlineInputBorder()),
    );
  }
}

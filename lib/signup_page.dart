import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailconroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confrimpasswordcontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Text(
              "loginpage",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    fillColor: const Color.fromARGB(255, 182, 250, 185),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter Your Email"),
                controller: emailconroller,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.key,
                    ),
                    fillColor: const Color.fromARGB(255, 182, 250, 185),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter Your password"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: confrimpasswordcontroller,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.key,
                    ),
                    fillColor: const Color.fromARGB(255, 182, 250, 185),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "confrim password"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 180,
              child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text(
                    "Signup",
                    style: TextStyle(fontSize: 16),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "or",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/google_logo.png",
                  width: 30,
                  fit: BoxFit.cover,
                )),
            // SizedBox(
            //   height: 10,
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "create an account ?",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "login",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

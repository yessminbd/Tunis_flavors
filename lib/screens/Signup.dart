import 'package:flutter/material.dart';
import 'package:tuniflavors/screens/Home.dart';
import 'package:tuniflavors/screens/Login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign up",
              style: TextStyle(
                color: Colors.green,
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 247, 240),
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: " Full name ",
                    border: InputBorder.none),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email ';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 247, 240),
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: "Email",
                    border: InputBorder.none),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email ';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 247, 240),
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: "Phone number",
                    border: InputBorder.none),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number ';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 247, 240),
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: "Password",
                    border: InputBorder.none),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 247, 240),
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: "Confirm password",
                    border: InputBorder.none),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number ';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                    },
                    child: Text(
                      "             You don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Home(),
                ));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7))),
              ),
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

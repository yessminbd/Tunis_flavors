// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tuniflavors/screens/Home.dart';
import 'package:tuniflavors/screens/Signup.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
            body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(70, 111, 50, 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Welcome Back!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 35,
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
                                hintText: " Email ",
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
                          height: 23,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 241, 247, 240),
                            borderRadius: BorderRadius.circular(66),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                suffix: Icon(
                                  Icons.visibility,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                hintText: "Password",
                                border: InputBorder.none),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password ';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Signup(),
                                  ));
                                },
                                child: Text(
                                  "  You don't have an account?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 106, vertical: 10)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7))),
                          ),
                          child: Text(
                            "Log In",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Or Log With ",
                              style: TextStyle(
                                  fontFamily: "myfont",
                                  fontSize: 15,
                                  color:
                                      const Color.fromARGB(255, 105, 104, 104),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStatePropertyAll(0)),
                              onPressed: () {},
                              child: SvgPicture.asset(
                                "assets/svg/google.svg",
                                height: 30,
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStatePropertyAll(0)),
                              onPressed: () {},
                              child: SvgPicture.asset(
                                "assets/svg/facebook.svg",
                                height: 30,
                                color: Colors.blue,
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStatePropertyAll(0)),
                              onPressed: () {},
                              child: SvgPicture.asset(
                                "assets/svg/apple.svg",
                                height: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

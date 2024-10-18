import 'package:flutter/material.dart';
import 'package:tuniflavors/screens/Market.dart';
import 'package:tuniflavors/screens/Restaurant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          SizedBox(
            height: 120,
          ),
          Text("What are you looking for today?",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              )),
          SizedBox(
            height: 70,
          ),
          ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStatePropertyAll(0),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Restaurant(),
                ));
              },
              child: Row(
                children: [
                  Image.asset(
                    "assets/restaurant.png",
                    fit: BoxFit.fitHeight,
                    height: 70,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Restaurant",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: "myfont"),
                  ),
                ],
              )),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                elevation: MaterialStatePropertyAll(0),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Market(),
                ));
              },
              child: Row(
                children: [
                  Image.asset(
                    "assets/market.png",
                    fit: BoxFit.fitHeight,
                    height: 70,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Market",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "myfont",
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}

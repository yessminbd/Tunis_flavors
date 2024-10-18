import 'package:flutter/material.dart';
import 'package:tuniflavors/screens/Cart.dart';
import 'package:tuniflavors/screens/Login.dart';
import 'package:tuniflavors/screens/Market.dart';
import 'package:tuniflavors/screens/Orders.dart';
import 'package:tuniflavors/screens/Profile.dart';
import 'package:tuniflavors/screens/Restaurant.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                "assets/LogoS.png",
                height: 70,
                width: 70,
              ),
              Text(
                "Tuni",
                style: TextStyle(
                    color: Color(0xFFEC7E16),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 4,
              ),
              Text("Flavors",
                  style: TextStyle(
                    color: Color(0xFFEC7E16),
                    fontSize: 20,
                  )),
            ]),
          ])),
          ListTile(
            title: Row(
              children: [
                Image.asset(
                  "assets/market.png",
                  height: 30,
                ),
                SizedBox(width: 10),
                Text("Market",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
              ],
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Market()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Image.asset(
                  "assets/restaurant.png",
                  height: 30,
                ),
                SizedBox(width: 10),
                Text("Restaurant",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
              ],
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Restaurant()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: Colors.blue,
                  size: 25,
                ),
                SizedBox(width: 10),
                Text("Cart",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
              ],
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Image.asset(
                  "assets/order.png",
                  height: 26,
                ),
                SizedBox(width: 10),
                Text("My orders",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    )),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Orders(),
              ));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Image.asset(
                  "assets/profile.png",
                  height: 30,
                ),
                SizedBox(width: 10),
                Text("Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    )),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Profile(),
              ));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.exit_to_app,
                  size: 23,
                ),
                SizedBox(width: 10),
                Text("Log out",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    )),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Login(),
              ));
            },
          ),
        ],
      ),
    );
  }
}

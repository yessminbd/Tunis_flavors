import 'package:flutter/material.dart';
import 'package:tuniflavors/components/SideBar.dart';
import 'package:tuniflavors/screens/Cart.dart';
import 'package:tuniflavors/screens/Market.dart';
import 'package:tuniflavors/constants/Market.dart';

class Vegetables extends StatelessWidget {
  const Vegetables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.70,
        child: Sidebar(),
      ),
      appBar: AppBar(
        title: Text(
          "Available Vegetables",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Market()));
            },
            child: Text(
              "Fruits",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStatePropertyAll(0),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemCount: vegetables.length,
          itemBuilder: (context, index) {
            final vegetable = vegetables[index];
            return Card(
              elevation: 4,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      vegetable.image,
                      fit: BoxFit.cover,
                      height: 140,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      vegetable.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "${vegetable.price.toStringAsFixed(2)} TND / kg",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

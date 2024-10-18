import 'package:flutter/material.dart';
import 'package:tuniflavors/components/SideBar.dart';
import 'package:tuniflavors/constants/Dishes.dart';
import 'package:tuniflavors/screens/Cart.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.70,
        child: Sidebar(),
      ),
      appBar: AppBar(
        title: Text(
          "Available Dishes",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        actions: [
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
          itemCount: dishes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final dish = dishes[index];
            return Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        dish.image,
                        fit: BoxFit.cover,
                        height: 120,
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      dish.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      dish.price,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 4),
                        Text(
                          dish.label,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

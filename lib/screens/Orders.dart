import 'package:flutter/material.dart';
import 'package:tuniflavors/components/SideBar.dart';

class Orders extends StatelessWidget {
  Orders({super.key});

  final List<Map<String, String>> orders = [
    {
      'date': '19 October 2023',
      'address': '123 Street of Commerce, Tunis',
      'total': '74,00 TND'
    },
    {
      'date': '01 January 2024',
      'address': '456 Liberty Avenue, Nabeul',
      'total': '35,00 TND'
    },
    {
      'date': '10 April 2024',
      'address': '789 Peace Boulevard, Sfax',
      'total': '20,00 TND'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.70,
        child: Sidebar(),
      ),
      appBar: AppBar(
        title: Text(
          "All orders",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            final order = orders[index];
            return Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery : ${order['date']}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.local_shipping,
                          color: Colors.green,
                          size: 25,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            "Adresse : ${order['address']}",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Total : ${order['total']}",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
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

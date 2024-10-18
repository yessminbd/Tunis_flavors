// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tuniflavors/components/BuildSummary.dart';
import 'package:tuniflavors/components/SideBar.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool _isSelected = true;
  bool _isSelected1 = true;
  int _quantity = 1;
  int _quantity1 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.70,
        child: Sidebar(),
      ),
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildCartItem(
                    "Tomato",
                    "4.00",
                    _quantity,
                    "assets/Market/tomato.jpg",
                    _isSelected,
                    () {
                      setState(() {
                        _isSelected = !_isSelected;
                      });
                    },
                    () {
                      if (_quantity > 1) {
                        setState(() {
                          _quantity--;
                        });
                      }
                    },
                    () {
                      setState(() {
                        _quantity++;
                      });
                    },
                  ),
                  _buildCartItem(
                    "Lablebi",
                    "13.00",
                    _quantity1,
                    "assets/Restaurant/Lablebi.jpeg",
                    _isSelected1,
                    () {
                      setState(() {
                        _isSelected1 = !_isSelected1;
                      });
                    },
                    () {
                      if (_quantity1 > 1) {
                        setState(() {
                          _quantity1--;
                        });
                      }
                    },
                    () {
                      setState(() {
                        _quantity1++;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          BuildSummary(),
        ],
      ),
    );
  }

  Widget _buildCartItem(
    String title,
    String price,
    int quantity,
    String imagePath,
    bool isSelected,
    VoidCallback onSelect,
    VoidCallback onDecrement,
    VoidCallback onIncrement,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              isSelected ? Icons.check_box : Icons.check_box_outline_blank,
              color: isSelected
                  ? const Color.fromARGB(255, 27, 27, 27)
                  : const Color.fromARGB(255, 165, 161, 161),
              size: 17,
            ),
            onPressed: onSelect,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 90,
              width: 90,
            ),
          ),
          SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 61, 61, 56),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 46, 46, 42),
                      ),
                    ),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.remove_circle_rounded,
                            size: 15,
                            color: const Color.fromARGB(255, 27, 27, 27),
                          ),
                          onPressed: onDecrement,
                        ),
                        Text(
                          '$quantity kg', 
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add_circle_rounded,
                            size: 15,
                            color: const Color.fromARGB(255, 27, 27, 27),
                          ),
                          onPressed: onIncrement,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

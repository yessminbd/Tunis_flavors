import 'package:flutter/material.dart';
import 'package:tuniflavors/components/SideBar.dart';
import 'package:tuniflavors/screens/Orders.dart';

class AddOrder extends StatelessWidget {
  const AddOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.70,
        child: Sidebar(),
      ),
      appBar: AppBar(
        title: Text(
          "Add order",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
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
                      padding: const EdgeInsets.fromLTRB(70, 20, 50, 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "IMPORTANT: Please Provide Exact Addresses for Efficient Delivery!",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 241, 247, 240),
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  hintText: "Full name",
                                  border: InputBorder.none),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name';
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
                            width: 300,
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
                                  return 'Please enter phone number';
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
                            width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.location_city,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                border: InputBorder.none,
                                hintText: 'State',
                              ),
                              items: <String>['Ariana', 'Tunis', 'Nabeul']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {},
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 241, 247, 240),
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                border: InputBorder.none,
                                hintText: 'City',
                              ),
                              items: <String>['City 1', 'City 2', 'City 3']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {},
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 241, 247, 240),
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.home,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  hintText: "Address 1",
                                  border: InputBorder.none),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Address 1';
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
                            width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.home_outlined,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  hintText: "Address 2 (Optional)",
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 241, 247, 240),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.calendar_today,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                hintText: "Delivery date",
                                border: InputBorder.none,
                              ),
                              readOnly: true,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 241, 247, 240),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            width: 300,
                            height: 100,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.note,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  hintText: "Add note",
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () async {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.check_circle,
                                          color: Colors.green,
                                          size: 80,
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          "Order validated!",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Your order will be delivered in two days.",
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 20),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Orders()));
                                          },
                                          child: Text(
                                            "OK",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 40,
                                              vertical: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 120, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7))),
                            ),
                            child: Text(
                              "Submit",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

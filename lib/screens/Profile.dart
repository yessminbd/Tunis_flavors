import 'package:flutter/material.dart';
import 'package:tuniflavors/components/SideBar.dart';
import 'package:tuniflavors/screens/Notifications.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.70,
        child: Sidebar(),
      ),
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
              tooltip: 'View notifications',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.blue,
                size: 20,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/user.jpg'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 61, 61, 56),
                      ),
                    ),
                    Text(
                      'FF FFF FFF',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 136, 136, 135),
                      ),
                    ),
                    Text(
                      'user@gmail.com',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 136, 136, 135),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Edit profile',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 61, 61, 56),
                ),
              ),
              // onTap: () {
              //   Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => EditProfile()),
              //   );
              // },
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                size: 20,
              ),
              title: Text(
                'Change password',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 61, 61, 56),
                ),
              ),
              // onTap: () {
              //   Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => Change_password()),
              //   );
              // },
            ),
          ],
        ),
      ),
    );
  }
}

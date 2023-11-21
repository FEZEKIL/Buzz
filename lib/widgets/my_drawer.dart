import 'package:flutter/material.dart';


class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          //Drawer header here
          Container(
            height: 165,
            color: Colors.grey,
            child: const DrawerHeader(
              decoration:  BoxDecoration(color: Colors.green),
              child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),

                SizedBox(
                    width: 16,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Your name',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    SizedBox(
                        width: 10,
                      ),
                     
                    Text('Your email',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ],
                )
              ],
              ),
              ),
          ),

           const SizedBox(
            height: 12.0,
          ),

            // The drawer body
            // View the history page
            GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.history,
                color: Colors.white,
              ),
              title: Text(
                "History",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // View the profile page
          GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "Visit Profile",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // View the about page
              GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text(
                "About",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // View Sign out page
            GestureDetector(
            onTap: () {
             
            },
            child: const ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                "Sign Out",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]
      )
    );
  }
}
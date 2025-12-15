import 'package:app_test/widget/custom_button_sidebar.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: const Color(0xff0E1D2F), // Navy dark
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 30),

          // Logo
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Egaila Coop",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 40),

          // Menu items
          CustomButtonSidebar(icon:Icons.dashboard,text: "Dashboard"),
          CustomButtonSidebar(icon:Icons.article,text: "Contracts"),
          CustomButtonSidebar(icon:Icons.settings,text: "Settings"),
          CustomButtonSidebar(icon:Icons.logout,text: "Logout"),


          const Spacer(),

          // User
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black),
                ),
                const SizedBox(width: 10),
                Text(
                  "عمرو",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


}

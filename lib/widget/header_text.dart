import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return // Header text
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 16,
        children: [
          Expanded(child: Text("Dashboard",style: TextStyle(fontSize: 24),)),
          Text(DateTime.now().toString().split(" ").first , style: TextStyle(fontSize: 24),),
        ],
      ),
    );
  }
}

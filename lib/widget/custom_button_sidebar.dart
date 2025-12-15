import 'package:flutter/material.dart';

class CustomButtonSidebar extends StatelessWidget {
  const CustomButtonSidebar({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        // خلفية الزر حسب الحالة
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.white; // لون عند الوقوف Hover
            }
            return Colors.transparent; // لون طبيعي
          },
        ),

        // لون النص والأيقونة
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.black;
            }
            return Colors.white70;
          },
        ),

        elevation: WidgetStateProperty.all(0),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        ),
      ),

      onPressed: () {},

      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}

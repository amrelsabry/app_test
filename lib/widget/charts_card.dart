import 'package:flutter/material.dart';

class ChartsCard extends StatelessWidget {
  const ChartsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 16),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Card(
              color: Colors.blue,
              child: SizedBox(
                height: double.infinity,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Card(
              color: Colors.yellowAccent,
              child: SizedBox(
                height: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

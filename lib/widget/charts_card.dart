import 'package:flutter/material.dart';

class ChartsCard extends StatelessWidget {
  const ChartsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.71,
            width: MediaQuery.of(context).size.width * 0.45,
            child: Card(color: Colors.red),
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.71,
          width: MediaQuery.of(context).size.width * 0.30,
          child: Card(color: Colors.yellowAccent),
        ),
      ],
    );
  }
}

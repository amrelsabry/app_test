import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    height: 123,
                    width: 255,
                    child: Card(
                      elevation: 4,
                      color: Colors.blueGrey.shade500,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            Icon(Icons.message, size: 38,color: Colors.white,),
                            const SizedBox(width: 13,),
                            Text("5",style: TextStyle(fontSize: 38 , color:  Colors.white),),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
  }
}
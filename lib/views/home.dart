import 'package:app_test/widget/card_info.dart';
import 'package:app_test/widget/charts_card.dart';
import 'package:app_test/widget/header_text.dart';
import 'package:app_test/widget/side_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // sideBar
          SideBar(),

          // content page
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // HeaderText
                HeaderText(),

                // card info
                Wrap(
                  children: [
                      CardInfo(),
                      CardInfo(),
                      CardInfo(),
                      CardInfo(),
                  ],
                ),
                      
                // content page
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SizedBox(
                        height: constraints.maxHeight,
                        child: ChartsCard(),
                      );
                    },
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

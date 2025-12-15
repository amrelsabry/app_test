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
              children: [
                // HeaderText
                HeaderText(),
                const SizedBox(height: 24,),
                // card info
                Wrap(
                  spacing: 10,
                  runAlignment: WrapAlignment.spaceBetween,
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

import 'package:banking_app_ui/utilities/themecolor.dart';
import 'package:banking_app_ui/utilities/themestyles.dart';
import 'package:banking_app_ui/widgets/creditcard.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  List cardList = [
    CreditCard(),
    CreditCard(),
    CreditCard(),
    CreditCard(),
    CreditCard(),
  ];
  int current_card = 0;
  final PageController page_controller = PageController(initialPage: 0);

  void dispose() {
    page_controller.dispose();
    super.dispose();
  }

  onPagechanged(int index) {
    setState(() {
      current_card = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 32.0, left: 15, right: 15, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Your Cards", style: ThemeStyles.primaryTitle),
                Text("See All", style: ThemeStyles.seeAll),
              ],
            ),
          ),
          Container(
            height: 246,
            child: PageView.builder(
              itemCount: cardList.length,
              scrollDirection: Axis.horizontal,
              controller: page_controller,
              onPageChanged: onPagechanged,
              itemBuilder: (context, index) => CreditCard(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i<cardList.length; i++)
                  if(current_card == i)
                    DotIndicator(true)
                  else
                    DotIndicator(false)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DotIndicator extends StatefulWidget {
  final bool isActive;
  DotIndicator(this.isActive);
  @override
  _DotIndicatorState createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: widget.isActive ? ThemeColors.black : ThemeColors.grey,
        ),
      ),
    );
  }
}


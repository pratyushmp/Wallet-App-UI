import 'package:banking_app_ui/utilities/themestyles.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatefulWidget {
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final Color color;
  TransactionCard(
      {this.color, this.letter, this.price, this.subTitle, this.title});
  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Container(
        height: 62,
        width: 343,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: BorderRadius.circular(22)),
                      child: Center(
                        child: Text(
                          widget.letter,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: ThemeStyles.otherDetailsPrimary,
                        ),
                        Text(
                          widget.subTitle,
                          style: ThemeStyles.otherDetailsSecondary,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.price,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 4,),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                )
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5),
            thickness: 0.5,
            endIndent: 16,
            indent: 16,
            )
          ],
        ),
      ),
    );
  }
}

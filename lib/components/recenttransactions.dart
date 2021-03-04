import 'package:banking_app_ui/utilities/themestyles.dart';
import 'package:banking_app_ui/widgets/transactioncard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 16, top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Transactions', style: ThemeStyles.primaryTitle,),
                  Text('See All', style: ThemeStyles.seeAll,),
                ],
              ),
            ),
            Flexible(
              flex: 1,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    TransactionCard(
                      color: Colors.indigo[900],
                      letter: 'A',
                      title: 'Amazon',
                      subTitle: 'Amazon India Ltd',
                      price: '- ₹ 2,800',
                    ),
                    TransactionCard(
                      color: Colors.green[900],
                      letter: 'B',
                      title: 'Big Basket',
                      subTitle: 'Grocery Shopping',
                      price: '- ₹ 600',
                    ),
                    TransactionCard(
                      color: Colors.blue,
                      letter: 'P',
                      title: 'PayTM',
                      subTitle: 'Wallet Recharge',
                      price: '- ₹ 1,500',
                    ),
                    TransactionCard(
                      color: Colors.black,
                      letter: 'B',
                      title: 'BESCOM',
                      subTitle: 'Utility Bill Payment',
                      price: '- ₹ 1,392',
                    ),
                  ],
                ),
            )
          ],
        ));
  }
}

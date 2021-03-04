import 'package:banking_app_ui/components/appbar.dart';
import 'package:banking_app_ui/components/cards.dart';
import 'package:banking_app_ui/components/recenttransactions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            child: Column(
              children: [
                Appbar(),
                CardList(),
                RecentTransactions(),
            ],
    )));
  }
}

import 'package:banking_app_ui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget> [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
    void onTabTapped(index) {
      setState(() {
        selectedindex = index;
        print(selectedindex);
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/home-icon.svg'),
              label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/transactions-icon.svg'),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/settings-icon.svg'),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/smiley-icon.svg'),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

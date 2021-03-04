import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Home",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),),
          Row(
            children: [
              IconButton(
                  icon: SvgPicture.asset('assets/analytics-icon.svg'),
                  onPressed: null,
              ),
              IconButton(
                icon: SvgPicture.asset('assets/search-icon.svg'),
                onPressed: null,
              ),
              IconButton(
                icon: SvgPicture.asset('assets/more-icon.svg'),
                onPressed: null,
              ),
            ],
          )
        ],
      ),
    );
  }
}

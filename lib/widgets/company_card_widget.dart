import 'package:flutter/material.dart';

import '../constants.dart';

class CompanyCardWidget extends StatelessWidget {
  const CompanyCardWidget({
    @required this.selected
  });

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green[50],
                  radius: 25,
                  child: Icon(
                    Icons.group,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lark Homes',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Broker',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: selected? Colors.black: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: selected,
            child: Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 90,
                height: 2,
                color: kBlueColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

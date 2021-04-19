import 'package:flutter/material.dart';
import '../constants.dart';

class PropertyCategoryWidget extends StatelessWidget {
  const PropertyCategoryWidget({@required this.selected
  }) ;

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Container(
            margin: EdgeInsets.only(right: 22),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 2.0),
                  blurRadius: 3.0,
                  color: Colors.black12,
                )
              ],
            ),
            child: Icon(
              Icons.home_work,
              size: 36,
            ),
          ),
        ),
        Visibility(
          visible: selected,
          child: Positioned(
            bottom: 0,
            left: 0,
            right: 19,
            child: CircleAvatar(
              radius: 5,
              backgroundColor: kBlueColor,
            ),
          ),
        ),
      ],
    );
  }
}

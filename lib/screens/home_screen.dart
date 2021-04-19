import 'package:flutter/material.dart';
import 'package:properties_app/constants.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var selectedIdx = 0;
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
            child: UserProfileWidget(),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: SearchRowWidget(),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 68,
            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, idx) => PropertyCategoryWidget(selected: (selectedIdx==idx),),
              itemCount: 6,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: Text(
              'All Properties',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Flexible(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (ctx, idx) => Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: SinglePropertyWidget(),
              ),
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}

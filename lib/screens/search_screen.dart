import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var selectedIdx = 0;
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
            child: SearchRowWidget(),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: Text(
              'Matched Properties',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 160,
            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, idx) => MatchedPropertyWidget(),
              itemCount: 6,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: Text(
              'Company',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
                height: 130,
            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, idx) =>CompanyCardWidget(selected: (selectedIdx==idx),),
              itemCount: 6,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (ctx, idx) => Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: CompanyReviewWidget(),
            ),
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

import '../constants.dart';

class SearchRowWidget extends StatelessWidget {
  const SearchRowWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: kBlueColor,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              prefixIcon: const Icon(Icons.search, ),
              hintText: 'Search',
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kGreenColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Icon(
            Icons.filter_list,
            color: kWhiteColor,
          ),
        ),
      ],
    );
  }
}

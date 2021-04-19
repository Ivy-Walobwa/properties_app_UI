import 'package:flutter/material.dart';

import '../constants.dart';
import 'textButtonWidget.dart';

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
              prefixIcon: const Icon(
                Icons.search,
              ),
              hintText: 'Search',
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        GestureDetector(
          child: Container(
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
          onTap: () {
            _filterModalBottomSheet(context);
          },
        ),
      ],
    );
  }

  void _filterModalBottomSheet(context) {
    var types = [
      'Apartment',
      'Land',
      'Commercial',
      'Type 1',
      'Type 2',
    ];
    showModalBottomSheet(
      isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        builder: (BuildContext bc) {
          return FractionallySizedBox(
            heightFactor: 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      height: 3,
                      width: 40,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    'Filter',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
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
                      prefixIcon: const Icon(
                        Icons.location_on,
                      ),
                      hintText: 'Search Location',
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    'Property Types',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, idx) => Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                      child: TextButtonWidget(
                        text: types[idx],
                        textColor: idx == 0 ? Colors.white : Colors.black,
                        buttoncolor: idx == 0 ? kBlueColor : null,
                      ),
                    ),
                    itemCount: 5,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Property Size',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Up to 40,000 sqft',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: kBlueColor),
                      ),
                    ],
                  ),
                ),
                RangeSlider(
                  values: RangeValues(0, 40),
                  min: 0,
                  max: 100,
                  onChanged: (RangeValues values) {},
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    'Property Price',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Low'), Text('High')],
                  ),
                ),
                RangeSlider(
                  values: RangeValues(30, 80),
                  min: 0,
                  max: 100,
                  labels: RangeLabels('15,000', '60,000'),
                  onChanged: (RangeValues values) {},
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextButtonWidget(
                            text: 'Reset',
                            textColor: Colors.black,
                            buttoncolor: null),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 2,
                        child: TextButtonWidget(
                            text: 'Check Availability',
                            textColor: Colors.white,
                            buttoncolor: kGreenColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

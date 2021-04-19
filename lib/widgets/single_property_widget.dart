import 'package:flutter/material.dart';

import '../constants.dart';

class SinglePropertyWidget extends StatelessWidget {
  const SinglePropertyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Image.asset('images/room.jpg'),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 25,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8.0,
                        color: kPinkColor,
                      )
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: kPinkColor,
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20),
            child: Wrap(
              direction: Axis.vertical,
              spacing: 8,
              children: [
                Text(
                  'Alegro Apartments',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 12,
                      color: Colors.black54,
                    ),
                    Text(
                      'King\'ong\'o, Nyeri',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
                Text(
                  '15,000 Ksh',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: kBlueColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MatchedPropertyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 285,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image:AssetImage('images/room.jpg')
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 285,
              padding: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                gradient: new LinearGradient(
                  end: const Alignment(0.0, -1),
                  begin: const Alignment(0.0, 0.4),
                  colors: <Color>[
                    const Color(0x8A000000),
                    Colors.black12.withOpacity(0.0)
                  ],
                ),

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alegro Apartments',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 12,
                        color: Colors.white70,
                      ),
                      Text(
                        'King\'ong\'o, Nyeri',
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

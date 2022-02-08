import 'package:flutter/material.dart';

class StarCarRental extends StatelessWidget {
  const StarCarRental({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   boxShadow: [
      //     BoxShadow(
      //       // color: Colors.grey[300],
      //       blurRadius: 5,
      //       offset: Offset(0, -20),
      //     ),
      //   ],
      // ),
      // decoration: BoxDecoration(boxShadow: kElevationToShadow[24]),
      width: 70,
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/cars.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'AB Rentals',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

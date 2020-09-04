import 'package:flutter/material.dart';

class Devices extends StatelessWidget {
  final String image;
  final String name;

  Devices({
    @required this.image,
    @required this.name,
  });

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: _width * 0.4,
          height: _height * 0.18,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300],
                blurRadius: 15,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Image.asset(
            image,
            height: _height * 0.1,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class SelectContainer extends StatelessWidget {
  final String icon;
  final String name;

  SelectContainer({
    @required this.icon,
    @required this.name,
  });


  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 24),
      child: Column(
        children: [
          Container(
            height: _height * 0.08,
            width: _width / 5.8,
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(icon),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(name, style: TextStyle(color: Colors.grey[400]),),
        ],
      ),
    );
  }
}

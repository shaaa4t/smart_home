import 'package:flutter/material.dart';

class SelectTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'From',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width/2.52,
                child: OutlineButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('06:00 PM',style: TextStyle(color: Colors.grey),),
                      Icon(Icons.keyboard_arrow_down,color: Colors.grey),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width/2.52,
                child: OutlineButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('10:00 PM',style: TextStyle(color: Colors.grey),),
                      Icon(Icons.keyboard_arrow_down,color: Colors.grey),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

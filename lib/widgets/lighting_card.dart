import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LightingCard extends StatefulWidget {
  final String title;
  final String image;

  LightingCard({
    this.title,
    this.image,
  });

  @override
  _LightingCardState createState() => _LightingCardState();
}

class _LightingCardState extends State<LightingCard> {
  bool _switchValue = false;
  String status = 'On';
  Color _color = Colors.white;
  Color _colorText = Colors.black87;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Container(
        height: _height * 0.3,
        width: _width * 0.7,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 15,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: _colorText,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    status,
                    style: TextStyle(color: _colorText),
                  ),
                  CupertinoSwitch(
                    trackColor: Colors.grey[100],
                    activeColor: Colors.grey[400],
                    value: _switchValue,
                    onChanged: (value){
                      setState(() {
                        _switchValue = value;
                        status == 'On' ? status = 'Off' : status = 'On';
                        status == 'On' ? _color = Colors.white : _color = Theme.of(context).backgroundColor;
                        status == 'On' ? _colorText = Colors.black87 : _colorText = Colors.white;
                      });
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                widget.image,
                width: 150,
              ),
            ),
          ],

        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {

  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            valueIndicatorColor: Colors.transparent,
            activeTrackColor: Colors.black87,
            inactiveTrackColor: Colors.grey[200],
            //showValueIndicator: ShowValueIndicator.onlyForDiscrete,
            valueIndicatorTextStyle: TextStyle(color: Colors.green),
            trackShape: RectangularSliderTrackShape(),
            trackHeight: 4.0,
            thumbColor: Colors.white,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
            overlayColor: Colors.white38,
            overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
          ),
          child: Slider(
            value: value,
            min: 0,
            max: 100,
            label: '${value.toInt()}%',
            divisions: 100,
            //inactiveColor: Colors.grey[300],
            onChanged: (val) {
              value = val;
              setState(() {
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Off',style: TextStyle(color: Colors.grey),),
              Text('100%',style: TextStyle(color: Colors.grey),),
            ],
          ),
        ),
      ],
    );
  }
}

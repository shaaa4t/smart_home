import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/models/models.dart';
import 'package:smart_home/models/select_model.dart';
import 'package:smart_home/widgets/select_container.dart';
import 'package:smart_home/widgets/widgets.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  DetailScreen({@required this.title});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<SelectModel> _listSelect = [
    SelectModel(
      icon: 'assets/images/light.png',
      name: 'Light',
    ),
    SelectModel(
      icon: 'assets/images/fan.png',
      name: 'Fan',
    ),
    SelectModel(
      icon: 'assets/images/sound.png',
      name: 'Sound',
    ),
    SelectModel(
      icon: 'assets/images/heater.png',
      name: 'Heater',
    ),
    SelectModel(
      icon: 'assets/images/humidity.png',
      name: 'Humidity',
    ),
  ];

  List<LightingModel> _listLighting = [
    LightingModel(
      name: 'Ceiling\nLighting',
      image: 'assets/images/ceiling_lighting.png',
    ),
    LightingModel(
      name: 'Table\nLamp',
      image: 'assets/images/table_lamp.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: _height * 0.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _listSelect.length,
                itemBuilder: (context, index) {
                  return SelectContainer(
                    icon: _listSelect[index].icon,
                    name: _listSelect[index].name,
                  );
                },
              ),
            ),
            Container(
              height: _height*0.3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _listLighting.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 16, bottom: 16),
                    child: LightingCard(
                      title: _listLighting[index].name,
                      image: _listLighting[index].image,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: textCate(nameCate: 'Intensive'),
            ),
            SizedBox(
              height: 16,
            ),
            CustomSlider(),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 16),
              child: textCate(nameCate: 'Timer'),
            ),
            SizedBox(
              height: 8,
            ),
            SelectTime(),

          ],
        ),
      ),
    );
  }
  Widget textCate({nameCate}) {
    return Text(
      nameCate,
      style: TextStyle(
        color: Colors.black87,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }

}

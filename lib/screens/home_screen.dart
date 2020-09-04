import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/models/models.dart';
import 'package:smart_home/screens/detail_screen.dart';
import 'package:smart_home/widgets/devices.dart';
import 'package:smart_home/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  List<RoomsModel> _listRooms = [
    RoomsModel(image: 'assets/images/kitchen.jpg', name: 'Kitchen', temp: '24'),
    RoomsModel(
        image: 'assets/images/livingroom.jpg', name: 'Living room', temp: '25'),
    RoomsModel(image: 'assets/images/bedroom.jpg', name: 'Bedroom', temp: '28'),
    RoomsModel(
        image: 'assets/images/bathroom.jpg', name: 'Bathroom', temp: '27'),
  ];

  List<DevicesModel> _listDevices = [
    DevicesModel(image: 'assets/images/microwave.png', name: 'Microwave'),
    DevicesModel(image: 'assets/images/range_hood.png', name: 'Range hood'),
    DevicesModel(image: 'assets/images/tv.png', name: 'TV'),
    DevicesModel(image: 'assets/images/refrigerator.png', name: 'Refrigerator'),
  ];

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopHeader(),
              SizedBox(
                height: _height * 0.05,
              ),
              textCate(nameCate: 'Rooms'),
              SizedBox(height: 16,),
              Container(
                height: _height * 0.45,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _listRooms.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CateContainer(
                        image: _listRooms[index].image,
                        name: _listRooms[index].name,
                        temp: _listRooms[index].temp,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(title: _listRooms[index].name,)));
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 16,
              ),
              textCate(nameCate: 'Devices'),
              SizedBox(
                height: 16,
              ),
              Container(
                height: _height * 0.5,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: _listDevices.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top : 16.0),
                      child: Center(
                        child: Devices(
                          image: _listDevices[index].image,
                          name: _listDevices[index].name,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
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

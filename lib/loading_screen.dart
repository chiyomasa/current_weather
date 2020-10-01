import 'package:flutter/material.dart';
import 'location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    print('get location data...');
    getLocation();
    getData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    Response response = await get(
        'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=e00ae0394e52abd97c0b823e83e6ffd2');
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

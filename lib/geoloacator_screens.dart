import 'package:flutter/material.dart';

class geolocator extends StatefulWidget {
  const geolocator({super.key});

  @override
  State<geolocator> createState() => _geolocatorState();
}

class _geolocatorState extends State<geolocator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('GeoLoacator') ,),
      body:Center(
        child:Text('hello') ,
      ) ,
    );
  }
}

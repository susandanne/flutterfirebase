import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class googleMap extends StatefulWidget {
  const googleMap({super.key});

  @override
  State<googleMap> createState() => _googleMapState();
}

class _googleMapState extends State<googleMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('googlemap'),),
      body:GoogleMap(zoomControlsEnabled:true,initialCameraPosition: CameraPosition(target: LatLng(55.48058772554527, -2.5529188596926833)),) ,
    );
  }
}

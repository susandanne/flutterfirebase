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
      appBar: AppBar(
        title: Text('googlemap'),
      ),
      body: GoogleMap(
        zoomControlsEnabled: true,
        initialCameraPosition: CameraPosition(
            target: LatLng(55.48058772554527, -2.5529188596926833),
             zoom:17,bearing: 30,
        tilt:20 ),
        myLocationEnabled: true,
        myLocationButtonEnabled:true,
        liteModeEnabled:true ,
        onTap: (LatLng latLng){
          print('$latLng is on the map');
        },
        markers:{
          Marker(
            markerId:MarkerId('Restaurent'),
            position:LatLng(55.478367048901376, -2.555401213467121),
            infoWindow: InfoWindow(title:'simply scotish'),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          )
        } ,


      ),
    );
  }
}

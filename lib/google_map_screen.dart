import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class googleMap extends StatefulWidget {
  const googleMap({super.key});

  @override
  State<googleMap> createState() => _googleMapState();
}

class _googleMapState extends State<googleMap> {
  late GoogleMapController _googleMapController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  Future<void> _mapvisualsation()async{
    print(await _googleMapController.getVisibleRegion());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('googlemap'),
      ),
      body: GoogleMap(onMapCreated:(GoogleMapController controller){
        _googleMapController=controller;
        _mapvisualsation();

      } ,
        mapType:MapType.satellite ,
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
          ),
          Marker(
            markerId:MarkerId('street'),
            position:LatLng(55.47890818455565, -2.55357027053833),
            infoWindow: InfoWindow(title:'windy'),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
          )
        } ,

        circles:{
          Circle(
            circleId:CircleId('Restaurent'),
            center:LatLng(55.478367048901376, -2.555401213467121),
            strokeColor: Colors.amber,
            radius: 50,
            strokeWidth: 5,
            fillColor: Colors.amber.withOpacity(.1)
          ),
          Circle(
              circleId:CircleId('Restaurent'),
              center:LatLng(55.47890818455565, -2.55357027053833),
              strokeColor: Colors.red,
              radius: 50,
              strokeWidth: 5,
              fillColor: Colors.cyanAccent.withOpacity(.1),
              onTap:() {
                print('tap events true,plz enable consumetapevents true');
              },
              consumeTapEvents: true,
          )
        } ,
        polylines:{Polyline(
          polylineId:PolylineId('church'),
          points: [
            LatLng(55.47989315397846, -2.555142045021057),
            LatLng(55.479543553452196, -2.552551031112671),
            LatLng(55.479266910837666, -2.5546270608901978),
            LatLng(55.47989315397846, -2.555142045021057),

          ]

        ) },
        polygons: {Polygon(
          polygonId: PolygonId('polygon'),
          strokeWidth:2,
          strokeColor: Colors.amberAccent,
          fillColor: Colors.yellowAccent.withOpacity(.50),
          points: [
            LatLng(55.48150431632049, -2.553918957710266),
            LatLng(55.481124331138055, -2.5552600622177124),
            LatLng(55.483024220409085, -2.5534039735794067),
            LatLng(55.48194813437439, -2.5532537698745728),
            LatLng(55.48150431632049, -2.553918957710266),

          ]
        )

        },



      ),
    );
  }
}

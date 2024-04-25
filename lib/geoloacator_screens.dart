import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class geolocator extends StatefulWidget {
  const geolocator({super.key});

  @override
  State<geolocator> createState() => _geolocatorState();
}


class _geolocatorState extends State<geolocator> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initScreens();
    _geoStremlocation();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('GeoLoacator') ,),
      body:Center(
        child:Text('hello') ,
      ) ,
    );
  }

}
Future<void>_initScreens()async{

  LocationPermission permission = await Geolocator.checkPermission();
  if(permission==LocationPermission.whileInUse || permission==LocationPermission.always){
    Position position= await Geolocator.getCurrentPosition();
  }
  else{
    LocationPermission requestStatus=await Geolocator.requestPermission();
    if(requestStatus==LocationPermission.whileInUse || requestStatus==LocationPermission.always){
      Position position= await Geolocator.getCurrentPosition();
      _initScreens();

    }else{
      print('permission desnied');
    }
  }


}
void _geoStremlocation(){
  Geolocator.getPositionStream(locationSettings:LocationSettings(
    accuracy: LocationAccuracy.high,distanceFilter: 1,timeLimit: Duration(seconds: 3)
  )).listen((p) {
    print(p);
  });
}


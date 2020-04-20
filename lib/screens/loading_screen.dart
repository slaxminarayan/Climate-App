import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }


  void getLocation() async {
     try{
      // somethingThatExpectslessThan10(1);
       Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
       print(position);
     } catch(e) {
       print(e);
     }
  }

  void somethingThatExpectslessThan10(int n) {
    if(n > 10) {
      throw 'n is greater thank 10, n should always be less than 10.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

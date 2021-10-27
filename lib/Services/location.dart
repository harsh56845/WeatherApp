import 'package:geolocator/geolocator.dart';

class Location {
   double latitude=0;
   double longitude=0;

  Future<void> CurrentLocation() async{
     try{
Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

latitude = position.latitude;
longitude = position.longitude;
  }catch(e){
    print(e);
    }
    
  }
}
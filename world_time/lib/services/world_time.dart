import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location = ""; //UI name
  String time = ""; //Time for location
  String flag = ""; //Ul to an asset flag icon
  String url = ""; //to location update url for api endpoint
  bool isDaytime = false; //true or false if its daytime or not

  WorldTime({required this.location, required this.flag, required this.url});

  Future <void> getTime() async {

    try{
      //make the request
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);


      //get properties
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set the time property
      isDaytime = now.hour > 6 && now.hour < 19 ? true : false;
      time = DateFormat.jm().format(now);

    }
    catch (e) {
      print(e);
      time = 'COULD NOT GET TIME';
    }

  }

}


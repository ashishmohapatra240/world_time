import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      //  print(data);

      String datetime = data['datetime'];
      String offsetHours = data['utc_offset'].substring(1, 3);
      String offsetMins = data['utc_offset'].substring(4, 6);
      print(datetime);
      print(offsetMins);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(
          hours: int.parse(offsetHours), minutes: int.parse(offsetMins)));
      time = now.toString();
    } catch (e) {
      print('caught error $e');
      time='could not get time';
    }
  }
}

import 'package:http/http.dart' as http;
import 'dart:convert';
import '/model/watchlist.dart';

Future<List<WatchList>> fetchToDo() async {
  print("fetching data..");
  var url = Uri.parse('https://tutu-2.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo

  if (WatchList.dataWatchList.isEmpty) {
    for (var d in data) {
      if (d != null) {
        //print(d);
        WatchList.dataWatchList.add(WatchList.fromJson(d));
      }
    }
    for (var d in WatchList.dataWatchList) {
      print(d.toString());
    }
  }

  return WatchList.dataWatchList;
}

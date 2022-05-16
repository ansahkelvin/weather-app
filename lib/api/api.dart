import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final weatherResult = FutureProvider<dynamic>((ref) async {
  const url =
      "https://api.openweathermap.org/data/2.5/weather?q=accra&appid=122a4844abde1ba3b17c31f423c2336d";
  final data = await http
      .get(Uri.parse(url))
      .then((response) => jsonDecode(response.body));
  return data;
});

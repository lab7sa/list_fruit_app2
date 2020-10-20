import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'Fruit.dart';

class HttpHandler {
  static const String _ROOT_URL = 'https://www.givethumb.com/tutorial/FruitApi/';
  static const String _GET_FRUIT = 'getFruit';


  static Future<List<Fruit>> getLinks() async {
    try {
      http.Response response = await http.get('$_ROOT_URL/$_GET_FRUIT');

      //Server return 200 ok response
      if (response.statusCode == 200) {
        //parse the JSON
        Iterable result = convert.jsonDecode(response.body);
        return result.map((fruit) => Fruit.fromJSON(fruit)).toList();
      } else {
        throw Exception('Failed to fitch fruit');
      }
    } catch (e) {
      return e;
    }
  }
}

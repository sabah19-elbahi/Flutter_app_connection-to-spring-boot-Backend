import 'dart:convert';
import 'package:http/http.dart';
import 'package:restapi1/stock.dart';

class HttpService {
  final String stockURL = "http://192.168.56.1:8080/customers";

  Future<List<Stock>> getStocks() async {
    Response res = await get(Uri.parse(stockURL));

    if (res.statusCode == 200) {
      final obj = jsonDecode(res.body);

      print(obj['stock'][0]['income']);
      List<Stock> stocks = <Stock>[];

      for (int i = 0; i < obj['stock'].length; i++) {
        Stock stock = Stock(
            id: obj['stock'][i]['income'],
            gender: obj['stock'][i]['income'],
            age: obj['stock'][i]['income'],
            income: obj['stock'][i]['income'],
            score: obj['stock'][i]['score']);
        stocks.add(stock);
      }

      return stocks;
    } else {
      throw "Unable to retrieve stock data.";
    }
  }
}

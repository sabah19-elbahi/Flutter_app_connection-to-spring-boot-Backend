import 'package:flutter/material.dart';
import 'package:restapi1/http_service.dart';

import 'package:restapi1/stock.dart';
import 'package:restapi1/stock_list.dart';
import 'package:intl/intl.dart';

import 'histo.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  final title;
  HttpService httpService = HttpService();

  MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.all(15),
          color: Colors.grey,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Text(
                        "Customers List",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        textColor: Colors.white.withOpacity(0.9), // foreground
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Histogrames()))
                        },
                        child: Text(
                            'Statistics and Visualization of all Customers'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        DateFormat('dd MMMM yyyy').format(DateTime.now()),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      DateFormat().add_jm().format(DateTime.now()),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: FutureBuilder(
                    future: httpService.getStocks(),
                    builder: (BuildContext context,
                        AsyncSnapshot<List<Stock>> snapshot) {
                      if (snapshot.hasData) {
                        List<Stock>? stocks = snapshot.data;
                        return SizedBox(
                            height: MediaQuery.of(context).size.height - 310,
                            child: StockList(
                              stocks: stocks,
                            ));
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

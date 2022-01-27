import 'package:flutter/material.dart';
import 'package:restapi1/stock.dart';

class StockList extends StatelessWidget {
  final List<Stock>? stocks;

  // ignore: use_key_in_widget_constructors
  const StockList({this.stocks});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(color: Colors.grey[400]);
      },
      itemCount: stocks!.length,
      itemBuilder: (context, index) {
        final stock = stocks![index];
        bool isChgNegative = true;

        return ListTile(
          contentPadding: const EdgeInsets.all(10),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(" Customer ${stock.id}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500)),
                Text("${stock.gender}",
                    style: const TextStyle(color: Colors.white, fontSize: 20))
              ]),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                "${stock.age} ans",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Score:${stock.score}, Income: ${stock.income}",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              /*Text(
                "Income: ${stock.income}",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w500),
              ),
            Container(
                alignment: Alignment.center,
                width: 75,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: isChgNegative ? Colors.red : Colors.green),
                child: Text(
                  "Income: ${stock.income}, Score:${stock.score} ",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),*/
            ],
          ),
        );
      },
    );
  }
}

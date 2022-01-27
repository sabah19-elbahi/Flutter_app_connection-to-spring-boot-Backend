import 'package:flutter/material.dart';

class Histogrames extends StatefulWidget {
  Histogrames({Key? key}) : super(key: key);

  @override
  _HistogramesState createState() => _HistogramesState();
}

class _HistogramesState extends State<Histogrames> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Text(
                'Age of Customers',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Card(
                child: Image.asset(
                  'images/age_hist.png',
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Text(
                'Gender of Customers',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Card(
                child: Image.asset(
                  'images/gender_count.png',
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Text(
                'Income of Customers',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Card(
                child: Image.asset(
                  'images/income_hist.png',
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Text(
                'Score of Customers',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Card(
                child: Image.asset(
                  'images/score_hist.png',
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )
            ])));
  }
}

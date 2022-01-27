class Stock {
  String? id;
  String? gender;
  int? age;
  int? income;
  int? score;
  Stock({this.id, this.gender, this.age, this.income, this.score});

  static List<Stock> getStocks() {
    List<Stock> stocks = <Stock>[];
    stocks.add(Stock(
        id: "61dc73af760cc88b8a98098e",
        gender: "Male",
        age: 21,
        income: 15,
        score: 81));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a98098f",
        gender: "Female",
        age: 23,
        income: 16,
        score: 77));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a980990",
        gender: "female",
        age: 31,
        income: 17,
        score: 40));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a980991",
        gender: "Female",
        age: 20,
        income: 16,
        score: 6));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a98098d",
        gender: "Female",
        age: 44,
        income: 66,
        score: 22));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a980992",
        gender: "Female",
        age: 23,
        income: 18,
        score: 94));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a980993",
        gender: "Male",
        age: 64,
        income: 19,
        score: 3));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a980994",
        gender: "Female",
        age: 30,
        income: 19,
        score: 3));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a980995",
        gender: "Male",
        age: 67,
        income: 19,
        score: 14));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a980996",
        gender: "Female",
        age: 35,
        income: 19,
        score: 99));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a980997",
        gender: "Female",
        age: 58,
        income: 20,
        score: 15));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a980998",
        gender: "Female",
        age: 24,
        income: 20,
        score: 77));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a980999",
        gender: "Female",
        age: 22,
        income: 17,
        score: 76));
    stocks.add(Stock(
        id: "61dc73af760cc88b8a98099a",
        gender: "Female",
        age: 35,
        income: 18,
        score: 6));

    return stocks;
  }
}

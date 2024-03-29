import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("6488177")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(name: "GEM", description: "Linear rifle", price: 1000, image: "g1.jpg"),
            ProductBox(name: "Stun Needle", description: "Long range rifle", price: 800, image: "g2.jpg"),
            ProductBox(name: "IRIDIUM", description: "Rocket Luncher", price: 2000, image: "g3.jpg"),
            ProductBox(name: "VP-66LH", description: "Laser handgun", price: 1500, image: "g4.png"),
            ProductBox(name: "VP-66LR", description: "long and close-range laser rifle", price: 20, image: "g5.png"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          Image.asset("assets/appimages/" + image),
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(this.description),
                      Text("Price: " + this.price.toString()),
                    ],
                  )))
        ])));
  }
}

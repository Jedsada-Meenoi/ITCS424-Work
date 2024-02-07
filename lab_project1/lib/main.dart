import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(217, 255, 0, 55)),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
   Icon customIcon = const Icon(Icons.search);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Items"),
         automaticallyImplyLeading: false,
  actions: [
   IconButton(
   onPressed: () {
    
   },
   icon: const Icon(Icons.search),
   )
  ],
      ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(name: "Hertarium", description: "The cryptocurrency circulating internally in the Herta Space Station. Can be used to purchase goods in Special Stores.", rarity: "Epic", image: "Hertareum.webp"),
            ProductBox(name: "Undying Starlight", description: "Splendid gems formed when a shooting star fell from the sky.", rarity: "Exotic", image: "star.png"),
            ProductBox(name: "Trash", description: "Worthless trash Better carry some with you.", rarity: "Common", image: "Trash.webp"),
            ProductBox(name: "Lifeless Blade", description: "Legendary Sword", rarity: "Exotic", image: "sword.webp"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description, required this.rarity, required this.image})
      : super(key: key);
  final String name;
  final String description;
  final String rarity;
  final String image;
  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    // Assign background color based on rarity
    switch (rarity.toLowerCase()) {
      case "common":
        backgroundColor = Colors.grey;
        break;
      case "uncommon":
        backgroundColor = Colors.green;
        break;
      case "exotic":
        backgroundColor = Colors.yellow;
        break;
      case "rare":
        backgroundColor = Colors.blue;
        break;
      case "epic":
        backgroundColor = Colors.purple;
        break;
      default:
        backgroundColor = Colors.white;
    }

    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        color: Color.fromARGB(255, 247, 4, 93),
        child: Card(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          Image.asset("assets/appimages/" + image),
          Expanded(
              child: Container(
                  color: backgroundColor,
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(this.description),
                      Text("Rarity: " + this.rarity),
                    ],
                  )))
        ])));
  }
}

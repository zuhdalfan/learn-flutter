import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,),
      home: MyHomePage(title: 'Product List'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key?key, required this.title}) : super(key: key);
  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),),
      body: ListView(
        shrinkWrap: false,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          ProductBox(
            name: "Cupertino Chair",
            description: "nice wooden leg chair, high quality",
            price: 1000,
            image: "chair1.jpg",
          ),
          ProductBox(
            name: "Cupertino Classic Chair",
            description: "classical aesthetic chair, white varian",
            price: 1200,
            image: "chair2.jpg",
          ),
          ProductBox(
            name: "Bowl Rotan Chair",
            description: "comfort bowl shaped chair with rotan structure",
            price: 2100,
            image: "chair3.jpeg",
          ),
          ProductBox(
            name: "RichAngel Chair",
            description: "soft chair and comfy",
            price: 1780,
            image: "chair4.jpg",
          ),
          ProductBox(
            name: "Modern Copper Chair",
            description: "thin and strong structure chair",
            price: 900,
            image: "chair5.png",
          ),
          ProductBox(
            name: "Cupertino Chair",
            description: "nice wooden leg chair, high quality",
            price: 1000,
            image: "chair1.jpg",
          ),
          ProductBox(
            name: "Cupertino Classic Chair",
            description: "classical aesthetic chair, white varian",
            price: 1200,
            image: "chair2.jpg",
          ),
          ProductBox(
            name: "Bowl Rotan Chair",
            description: "comfort bowl shaped chair with rotan structure",
            price: 2100,
            image: "chair3.jpeg",
          ),
        ],
      )
    );
  }
}

class MyButton extends StatelessWidget{
  MyButton({Key?key}) : super(key:key);

  @override 
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0,color: Color(0xFFFFFFFFFF)),
          left: BorderSide(width: 1.0,color: Color(0xFFFFFFFFFF)),
          right: BorderSide(width: 1.0,color: Color(0xFFFF000000)),
          bottom: BorderSide(width: 1.0,color: Color(0xFFFF000000)),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
            left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
            right: BorderSide(width: 1.0,color: Color(0xFFFF7F7F7F)),
            bottom: BorderSide(width: 1.0,color: Color(0xFFFF7F7F7F)),
          )
        ),
        child: const Text('OK',
            textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
      ),
    );
  }
}

class ProductBox extends StatelessWidget{
  ProductBox({Key?key,required this.name,required this.description,required this.price,required this.image}) : super(key:key);

  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimage/"+image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(this.description, textAlign: TextAlign.center,),
                    Text("Price: "+this.price.toString()+" USD"),
                  ],
                ),
              ))
          ],
        ),
      ),
    );
  }
}
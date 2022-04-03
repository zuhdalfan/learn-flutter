import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';

class MyAppNav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePageNav(
        title: 'product state demo home page'
      ),
    );
  }
}

class ProductNav{
  final String name, description, image;
  final int price;

  ProductNav(this.name,this.description,this.price,this.image);

  static getProductNav() {}
}

List<ProductNav> getProductNav(){
  List<ProductNav> items = <ProductNav>[];

  items.add(ProductNav(
    "Pixel",
    "Pixel is the most feature-full phone ever",
    800,
    "chair1.jpg"
  ));
  items.add(ProductNav(
    "Pixel",
    "Pixel is the most feature-full phone ever",
    800,
    "chair2.jpg"
  ));
  items.add(ProductNav(
    "Pixel",
    "Pixel is the most feature-full phone ever",
    800,
    "chair3.jpeg"
  ));
  items.add(ProductNav(
    "Pixel",
    "Pixel is the most feature-full phone ever",
    800,
    "chair4.jpg"
  ));
  items.add(ProductNav(
    "Pixel",
    "Pixel is the most feature-full phone ever",
    800,
    "chair5.png"
  ));
  items.add(ProductNav(
    "Pixel",
    "Pixel is the most feature-full phone ever",
    800,
    "chair6.jpeg"
  ));

  return items;
}

class RatingBoxNav extends StatefulWidget{
  @override 
  _RatingBoxNavState createState() => _RatingBoxNavState();
}

class _RatingBoxNavState extends State<RatingBoxNav>{
  int _rating = 0;

  void _setRatingAsOne(){
    setState(() {
      _rating = 1;
    });
  }
  void _setRatingAsTwo(){
    setState(() {
      _rating = 2;
    });
  }
  void _setRatingASThree(){
    setState(() {
      _rating = 3;
    });
  }

  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            onPressed: _setRatingAsOne, 
            icon: (_rating >= 1?Icon(
              Icons.star,
              size: _size,
            )
            : Icon(
              Icons.star_border,
              size: _size,
            )),
            color: Colors.red[500],
            iconSize: _size,),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            onPressed: _setRatingAsOne, 
            icon: (_rating >= 2?Icon(
              Icons.star,
              size: _size,
            )
            : Icon(
              Icons.star_border,
              size: _size,
            )),
            color: Colors.red[500],
            iconSize: _size,),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            onPressed: _setRatingAsOne, 
            icon: (_rating >= 3?Icon(
              Icons.star,
              size: _size,
            )
            : Icon(
              Icons.star_border,
              size: _size,
            )),
            color: Colors.red[500],
            iconSize: _size,),
        ),
      ],
    );
  }
}

class ProductBox extends StatelessWidget{
  ProductBox({Key?key, required this.item}):super(key: key);

  final ProductNav item;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimage/"+this.item.image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.item.name, style: TextStyle(
                      fontWeight: FontWeight.bold
                    )),
                    Text(this.item.description),
                    Text("Price: "+this.item.price.toString()),
                    RatingBoxNav(),
                  ],
                ),
              )
            )],
        ),
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  ProductPage({Key?key,required this.item}):super(key:key);
  
  final ProductNav item;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.item.name),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/appimage/"+this.item.image),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        this.item.name,
                        style: TextStyle(fontWeight:FontWeight.bold),
                      ),
                      Text(this.item.description),
                      Text("Price: "+this.item.price.toString()),
                      RatingBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),  
        ),
      ),
    );
  }
}


class MyHomePageNav extends StatelessWidget{
  MyHomePageNav({Key?key, required this.title}):super(key: key);

  final String title;
  final items = ProductNav.getProductNav();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Navigation"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return GestureDetector(
            child: ProductBox(item: items[index]),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(item:items[index])),
              );
            },
          );
        })
    );
  }
}

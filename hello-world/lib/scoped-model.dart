// import 'package:flutter/material.dart';
// import 'package:scoped_model/scoped_model.dart';


// class MyAppScopedModel extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePageScopedModel(title: 'Product state demo home page'),
//     );
//   }
// }

// class MyHomePageScopedModel extends StatelessWidget{
//   const MyHomePageScopedModel({Key?key,required this.title}):super(key:key);

//   final String title;

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar:AppBar(
//         title: Text(this.title),
//       ),
//       body: Center(
//         child: Text('Hello World'),
//       ),
//     );
//   }
// }

// class Product extends Model{
//   final String name;
//   final String description;
//   final int price;
//   final String image;
//   int rating;

//   Product(this.name,this.description,this.price,this.image,this.rating);

//   factory Product.fromMap(Map<String,dynamic>json){
//     return Product(
//       json['name'],
//       json['description'],
//       json['price'],
//       json['image'],
//       json['rating'],
//     );
//   }

//   void updateRating(int myRating){
//     rating = myRating;

//     notifyListeners();
//   }
// }

// List<Product> getProducts(){
//   List<Product> items = <Product>[];

//   items.add(Product(
//     "Chair #1",
//     "Pixel is the most feature-full phone ever",
//     800,
//     "assets/appimage/chair1.jpg",0
//   ));
//   items.add(Product(
//     "Chair #1",
//     "Pixel is the most feature-full phone ever",
//     800,
//     "assets/appimage/chair2.jpg",0
//   ));
//   items.add(Product(
//     "Chair #1",
//     "Pixel is the most feature-full phone ever",
//     800,
//     "assets/appimage/chair3.jpeg",0
//   ));
//   items.add(Product(
//     "Chair #1",
//     "Pixel is the most feature-full phone ever",
//     800,
//     "assets/appimage/chair4.jpg",0
//   ));
//   items.add(Product(
//     "Chair #1",
//     "Pixel is the most feature-full phone ever",
//     800,
//     "assets/appimage/chair5.png",0
//   ));

//   return items;
// }
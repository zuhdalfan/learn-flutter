import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class Book{
  final id;
  final title;
  final author;
  final notes;
  final categories;
  final description;

  Book(this.title, this.author, this.notes, this.categories, this.description, this.id);

  Book build(BuildContext context){
    CollectionReference data = FirebaseFirestore.instance.collection('book');

    return Book(title, author, notes, categories, description, id);
  }



}
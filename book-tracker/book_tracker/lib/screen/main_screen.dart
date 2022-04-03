// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/book.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({ Key? key }) : super(key: key);
  
  get author => null;
  get categories => null;
  get description => null;
  get id => null;
  get notes => null;
  get title => null;

  @override
  Widget build(BuildContext context) {
    CollectionReference bookCollection = FirebaseFirestore.instance.collection('book');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        centerTitle: false,
        title: Row(
          children: [
            Text('A.Reader', style: Theme.of(context).textTheme.headline6?.copyWith(
              color: Colors.redAccent, fontWeight: FontWeight.bold
            ),),
            StreamBuilder<QuerySnapshot>(
              stream : bookCollection.snapshots(),
              builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final bookListStream = snapshot.data!.docs.map((book){
                return Book(title, author, notes, categories, description, id);
              }).toList();
              for(var item in bookListStream){
                print(item.notes);
              }

              return ListView.builder(
                itemCount: bookListStream.length,
                itemBuilder: (context,index){
                  return Text(bookListStream[index].author);
                });

            },)
          ],
        ),
      ),
      
    );
  }
}
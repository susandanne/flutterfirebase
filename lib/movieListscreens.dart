

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class movieList extends StatefulWidget {
  const movieList({super.key});

  @override
  State<movieList> createState() => _movieListState();
}

class _movieListState extends State<movieList> {
  final FirebaseFirestore db = FirebaseFirestore.instance;
  final List<movie> _mlist=[];
  @override
  void initState() {
  super.initState();
  getMovielistData();

  }
  void getMovielistData()async{
    await db.collection("movies").get().then((event) {
      for (var doc in event.docs) {
         print("${doc.id} => ${doc.data()}");
        _mlist.clear();
        _mlist.add(movie.fromjson(doc.id, doc.data()as Map<String,dynamic>));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('firebase application'),),
      backgroundColor: Colors.blueAccent,
      body: ListView.separated(itemBuilder: (context,index){
return ListTile(

   title: Text(_mlist[index].name),
   subtitle: Text(_mlist[index].language),
  leading: Text(_mlist[index].year),
   trailing: Text(_mlist[index].id),

);
      }, separatorBuilder: (_,__)=>Divider(), itemCount:_mlist.length),
    floatingActionButton:FloatingActionButton(onPressed: () {
      Map<String,dynamic>_addmoviesdata={
        'name':'kung fu drunken master',
        'language':'germany',
        'ratings':'1.4',
        'Year':'2001'
      };
      db.collection('movies').add(_addmoviesdata);
      // db.collection('movies').doc('id no').update(_addmoviesdata);
      // db.collection('movies').doc('id no').delete();
    },) ,
    );

  }
}
class movie{
  final String id, name,language,year;

  movie({required this.id, required this.name, required this.language, required this.year});
  factory movie.fromjson(String id,Map<String,dynamic> json){
return movie(id: id, name: json['name'], language: json['language'], year: json['Year']);
}
}

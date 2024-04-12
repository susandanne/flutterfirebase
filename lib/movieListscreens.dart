import 'package:flutter/material.dart';

class movieList extends StatefulWidget {
  const movieList({super.key});

  @override
  State<movieList> createState() => _movieListState();
}

class _movieListState extends State<movieList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('firebase application'),),
      backgroundColor: Colors.blueAccent,
      body: ListView.separated(itemBuilder: (context,index){
return ListTile(
  title: Text('movie name'),
  subtitle: Text('language'),
  leading: Text('2024'),
  trailing: Text('name'),

);
      }, separatorBuilder: (_,__)=>Divider(), itemCount:4),
    );
  }
}

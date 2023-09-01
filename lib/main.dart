import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver App',style: TextStyle(fontSize: 30),),
              background: Image.asset('assets/img1.jpg',fit: BoxFit.fill,),
            ),
            expandedHeight: 200,
            pinned: true,
            backgroundColor: Colors.deepOrange,

            leading: Icon(Icons.menu),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.eighteen_mp)),
            ],
          ),

          SliverList(delegate: SliverChildBuilderDelegate(
              (context, index){
                return Card(
                  child: Image.asset('assets/img2.jpg'),
                );
              }
          )),

          SliverList(delegate: SliverChildBuilderDelegate(
                  (context, index){
                return Card(
                  child: Image.asset('assets/img1.jpg'),
                );
              }
          )),


        ],
      ),
    );
  }
}

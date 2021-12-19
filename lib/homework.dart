import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My app'),
        centerTitle:true,
        leading: Icon(Icons.arrow_back),
        actions: [Container(margin: EdgeInsets.all(5),
            child:Icon(Icons.add_a_photo))],
      ),
      body: SingleChildScrollView(child: Column(
        children: [Center(
      child:
          Column(
            children: [ClipRRect(borderRadius:BorderRadius.all(Radius.circular(360)),
              child:

              Container(margin: EdgeInsets.all(10),
                child: Image.asset('image/cartoon.jpg'),

              ),),
            Container(margin: EdgeInsets.all(10),
              child: Text('Sumaya Jannat Chowdhury'),),
              Container(margin: EdgeInsets.all(10),
                child: Text('Email:jannatchowdhury58@gmail.com'),),
           Container(margin: EdgeInsets.all(10),
             child: Image.asset('image/to.jpg'),)
           
            ],

          ),
          

        ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            height: 200.0,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
              Row(
                  children: [
                    Container(
                        child: Image.asset('image/me.jpg'),
                      ),
                  Container(
                    child: Image.asset('image/me2.jpg'),
                  ),
                  Container(
                    child: Image.asset('image/me3.jpg'),
                  ),Container(
                    child: Image.asset('image/me4.jpg'),
                  ),
                  Container(
                    child: Image.asset('image/me5.jpg'),
                  )

                  ],


    ),]

    )

          ), ],
      ),),
    );
  }
}

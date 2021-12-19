import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
class screenlog3 extends StatefulWidget {
  const screenlog3({Key? key}) : super(key: key);

  @override
  _screenlog3State createState() => _screenlog3State();
}

class _screenlog3State extends State<screenlog3> {
  var image=['image/Rectangle 11.png','image/Rectangle 11 (1).png','image/Rectangle 11 (2).png','image/Rectangle 11 (3).png'];
  int index=0;
  @override
  Widget build(BuildContext context) {
    var high=MediaQuery.of(context).size.height;
    var wide=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(toolbarHeight: 30,
          leadingWidth: wide,
          backgroundColor: Colors.white,
          title:
        Image.asset('image/Light.png',fit: BoxFit.fill,width: wide,)
      ),

        body:
        SingleChildScrollView(
          child: Column(
            children: [Container(margin: EdgeInsets.all(20), child: Align(alignment: Alignment.centerLeft, child: Image.asset('image/header.png'))),

              Container(margin: EdgeInsets.all(20),
                  child:TextField(decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Image.asset('image/Vector.png'),
                hintText: 'What you want to learn',
                  enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )
              ),)),
              Container(margin: EdgeInsets.all(20),
                child: Align( alignment: Alignment.centerLeft,
                    child: Text('Popular Courses',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),),

               Container(height:500,
                child: GridView.builder(gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: 1,),
                  itemCount: 4,

                  itemBuilder: (
                  BuildContext context,int index
                  ){
                return Container(margin: EdgeInsets.only(top: 20,left: 20 ,right: 20,bottom: 20),
                    height:high*.7,
                    width: wide/2-40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child:

                    Card(
                      child: Column(
                        children: [
                          Container(margin: EdgeInsets.all(0),
                              child: Image.asset(image[index], fit: BoxFit.fill)),
                          Container(margin: EdgeInsets.all(5),
                            child: Text('Wordpress',
                               style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),),
                          Container(margin: EdgeInsets.all(5),
                            child: Text('Devolopment bigine..',
                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),),
                          Container(margin: EdgeInsets.all(5),
                            child: Text('John Smith',
                              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),),)

                        ],
                      ),
                    )

                       );


                  }),
              ),


            ],
          ),
        ),


    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class screenlogin2 extends StatefulWidget {
  const screenlogin2({Key? key}) : super(key: key);

  @override
  _screenlogin2State createState() => _screenlogin2State();
}

class _screenlogin2State extends State<screenlogin2> {


  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.white,
        toolbarHeight:20,
        leading: Container(margin: EdgeInsets.only(bottom: 1),
            child: Text('12:30',style:
            TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black),)),
        actions: [Container(margin: EdgeInsets.only(bottom: 1),
            child: Row(children: [
          Icon(Icons.wifi,color: Colors.black,),
          Icon(Icons.network_cell_outlined,color: Colors.black,),
          Icon(Icons.battery_charging_full_outlined,color: Colors.black,),
          Text('100%',style: TextStyle(color: Colors.black),)]))
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children:[Container(color: Colors.white,
            height: screenheight,
            width: screenwidth,
            //child: ,
          ),
            Column(
            children:[ Container(
              margin: EdgeInsets.only(top: 60),
              width:screenwidth,
            height: screenheight,
            //color: Colors.white54,
            decoration: BoxDecoration(
              color: Color(0XffFCF9F5),
              //color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child:Column(children: [
              Container(margin: EdgeInsets.all(59),
                child:Column(children:[ Text('Welcome to Hairshare',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              Text('sign in to continue'),]),
    ),
             Container(margin:EdgeInsets.only(left: 16,right: 16,bottom: 10),color: Colors.white,
             child: TextField(decoration: InputDecoration(hintText: 'Username',
                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide(color: Colors.white))),),),
              Container(margin:EdgeInsets.only(left: 16,right: 16,bottom: 14),color: Colors.white,
                child: TextField(decoration: InputDecoration(suffixIcon: Icon(Icons.remove_red_eye),hintText: 'Password',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white24))),),),
             Container(margin: EdgeInsets.only(right: 16),
               child: Align(alignment: Alignment.centerRight,
                   child: Text('Forgot password?')),
             ),
              Container(margin:EdgeInsets.only(left: 16,right: 16,top: 32,bottom: 34),color: Color(0XffFFC700),
                width: screenwidth*.91,
                height: 50,
                child:Center(child: Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)) ,),
              Text('Or Sign in with'),
              Container(margin:EdgeInsets.only(left: 115,right: 105,top: 22) ,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Container(height: 90, width: 90,margin: EdgeInsets.only(right: 15,left: 25), child: Stack(children: [
                  Image.asset('image/e.png',fit: BoxFit.fill,),
              Container(margin: EdgeInsets.only(left: 13,top: 8), child: Image.asset('image/facebook.png'))
                ],),),
                Container(margin:EdgeInsets.only(right: 15) ,height: 90, width: 90,
                  child: Stack(children: [Image.asset('image/Path 106.png',fit: BoxFit.fill),
                Container(margin: EdgeInsets.only(left: 11,top: 10),
                    child: Image.asset('image/iconinsta.png'))],),),
                Container(//margin:EdgeInsets.only(right: 15),
                  height: 90, width: 90,
                  child: Stack(children: [Image.asset('image/Path 130.png',height: 40,width: 40, fit: BoxFit.fill),
                Container(margin: EdgeInsets.only(left: 11,top: 8),
                    child: SvgPicture.asset('image/Path 106.svg'))],),)
              ],),)

            ]
          ),
    )]),
       ], ),
      )
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const Revscreen(
  )
  );
}

class Revscreen extends StatelessWidget {
  const Revscreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
        debugShowCheckedModeBanner: false,

      home:Scaffold(

          appBar:AppBar(
              leading:Padding(
                padding:EdgeInsets.only(left:10.0),
              child:ClipRRect(
                  borderRadius:BorderRadius.circular(50.0),
                  child:Image.asset('assets/health_app_image.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                )
              ),
              actions:[
                Builder(
                    builder:(context){
                      return IconButton(
                          icon:Icon(Icons.menu),
                          onPressed:(){
                            Scaffold.of(context).openEndDrawer();
                          }
                      );
                    }
                )
              ]
          ),
          body: Padding(
              padding:EdgeInsets.symmetric(horizontal:20.0,vertical:0.0),
            child:SafeArea(
                  child: Row(
                      children:[



                        Column(
                            children:[
                              SizedBox(height:40.0),
                              Text('Eat smarter,feel\nBetter ',style:TextStyle(fontSize:30,fontWeight:FontWeight.w700))

                            ]
                        )
                      ]
                  )


              )


          )
      )
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String photographer;
  final String price;
  final String details;
  final int index;
  DetailsPage({@required this.imagePath,@required this.title,@required this.photographer,@required this.price,@required this.details,@required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
             child: Hero(
               tag: 'logo$index',
               child: Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight:Radius.circular(30)),
                     image: DecorationImage(
                         image: AssetImage(imagePath),
                         fit: BoxFit.cover
                     )
                 ),
               ),
             ),
            ),
            Container(
              height: 260.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Padding(
                   padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                   child: Column(
                     children: [
                       Text(title,style: TextStyle(color: Colors.lightBlueAccent,fontSize: 22,fontWeight: FontWeight.bold),),
                       Text('By $photographer',style: TextStyle(fontSize: 10),),
                       Text(price,style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18,fontWeight: FontWeight.bold),),
                       SizedBox(height: 10.0,),
                       Text(details,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                     ],
                   ),
                 ),
                  Row(
                    children: [
                      Expanded(
                        child: FlatButton(
                          color: Colors.lightBlueAccent,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Text('Back',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      Expanded(
                        child: FlatButton(
                          color: Colors.lightBlueAccent,
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Text('Buy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                        ),
                      )

                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

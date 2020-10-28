import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:galary_app/details_page.dart';
class HomePage extends StatelessWidget {

  List<ImageDetails> _images =[
    ImageDetails(
        imagePath: 'images/i1.png',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),
    ImageDetails(
        imagePath: 'images/i2.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),

    ImageDetails(
        imagePath: 'images/i3.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),

    ImageDetails(
        imagePath: 'images/i4.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),

    ImageDetails(
        imagePath: 'images/i5.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),

    ImageDetails(
        imagePath: 'images/i6.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),

    ImageDetails(
        imagePath: 'images/i7.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),
    ImageDetails(
        imagePath: 'images/i8.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),
    ImageDetails(
        imagePath: 'images/i9.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),
    ImageDetails(
        imagePath: 'images/i10.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),
    ImageDetails(
        imagePath: 'images/i11.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),
    ImageDetails(
        imagePath: 'images/i12.jpg',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),
    ImageDetails(
        imagePath: 'images/i1.png',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),
    ImageDetails(
        imagePath: 'images/i1.png',
        imagePrice: '\$250',
        photographer: 'Martin Guptil',
        title: 'Little Baby',
        details: 'this baby very beautiful.i found it in google.'
    ),



  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40,),
            Text('Galary',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0),textAlign: TextAlign.center,),
            SizedBox(height: 40.0,),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),

                ),
                child: GridView.builder(
                  itemCount: _images.length,
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index){

                      return RawMaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage(
                            imagePath: _images[index].imagePath,
                              title:_images[index].title,
                              photographer:_images[index].photographer,
                              price:_images[index].imagePrice,
                             details:_images[index].details,
                            index: index,

                          )));
                        },
                        child: Hero(
                          tag: 'logo$index',
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                    image: AssetImage(_images[index].imagePath),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        )
                      );



                    }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class ImageDetails {

  final String imagePath;
  final String imagePrice;
  final String photographer;
  final String title;
  final String details;

  ImageDetails({@required this.imagePath , @required this.imagePrice , @required this.photographer, @required this.title ,@required this.details });



}
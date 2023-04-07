  import 'package:flutter/material.dart';
import 'package:listviwbuilder_abstarct_images/model_abstact_image.dart';

class AbstractImage extends StatelessWidget {
   const AbstractImage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     List Bgimages=[
       Modelabs(
           img: "images/images.jpeg",
           head1: "Heading 1",
           head2: "SubHeading 1",
       ),
       Modelabs(
         img: "images/images (1).jpeg",
         head1: "Heading 2",
         head2: "SubHeading 2",
       ),
        Modelabs(
         img: "images/images (2).jpeg",
         head1: "Heading 3",
         head2: "SubHeading 3",
       ),
        Modelabs(
         img: "images/images (3).jpeg",
         head1: "Heading 4",
         head2: "SubHeading 4",
       ),
        Modelabs(
         img: "images/Universe Wallpapers 1.jpg",
         head1: "Heading 5",
         head2: "SubHeading 5",
       ),
        Modelabs(
         img: "images/wallpaper2you_15246.jpg",
         head1: "Heading 6",
         head2: "SubHeading 6",
       ),
     ];

     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.deepPurple,
         title: Text("Scroll View",
           style: TextStyle(fontWeight: FontWeight.w700),),
       ),
       body: ListView.builder(
         itemCount: Bgimages.length,
           scrollDirection: Axis.horizontal,
           itemBuilder: (context,index){
           return Padding(
             padding: const EdgeInsets.only(bottom:420,top: 20),
             child: Card(

               child: Column(
                 children: [
                   Container(
                     height:200,
                     width:130,
                     decoration: BoxDecoration(

                       image: DecorationImage(
                         image:AssetImage(Bgimages[index].img),
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),

                   SizedBox(height: 20),
                   Text(Bgimages[index].head1,
                     style: TextStyle(color: Colors.black,
                         fontWeight: FontWeight.w700),),
                   SizedBox(height: 5,),
                   Text(Bgimages[index].head2,style:
                   TextStyle(color: Colors.grey),),
                 ],
               ),


             ),
           );
           }
       ),


     );
   }
 }

import 'package:flutter/material.dart';
import 'package:nice/content.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  int ?currentIndex;
    // Color color=Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsetsDirectional.only(
          start: 20, end: 20, top: 20, bottom: 20),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        crossAxisSpacing: 50,
        mainAxisSpacing: 40,

        children: List.generate(
            contentsa.length, (index) =>   InkWell(
    onTap: () {
    setState(() {
    currentIndex=index;
    // if(currentIndex==index){
    // color=Colors.black;
    // }
    // else{
    // color=Colors.orange;
    // }
    });


    },
            // InkWell(
//             onTap: () {
//               setState(() {
// currentIndex=index;
//               if(currentIndex==index){
//                 color=Colors.black;
//               }
//               else{
//                 color=Colors.orange;
//               }
//               });
//
//
//             },
        child:
            _buildGrid(contentsa[index],
                currentIndex==index?Colors.black:Colors.black12,
                currentIndex==index?Icon(Icons.gpp_good_sharp):Container()),

      // ),
        )
    ))
        )
    );
  }

  Widget _buildGrid(Contents cont,Color color,Widget icon) =>


  Container(
    alignment: Alignment.center,
    width: 145,
    height: 140,
    decoration: BoxDecoration(

        border: Border.all(
           color: color,


        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10)),
    ),
    child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.gpp_good,),

            Image(
              image: AssetImage(cont.image),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              cont.text,
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
    ),

      );
}

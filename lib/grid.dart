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

    });


    },
            // InkWell(

        child:
            _buildGrid(contentsa[index],
                currentIndex==index?Colors.black:Colors.black12,
                currentIndex==index?Container(
                    width: 25,
                    height: 25,
                    decoration:BoxDecoration(color: Colors.black,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),),),
                    child: Icon(Icons.done,color: Colors.white,size: 15,)):Container()),

      // ),
        )
    ))
        )
    );
  }

  Widget _buildGrid(Contents cont,Color color,Widget icon,) =>


  Container(
    clipBehavior: Clip.antiAlias,
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
        child: Stack(
          fit: StackFit.expand,

          children: [
            Align(alignment: Alignment.topRight,

                    child: icon),
            Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [


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
          ],
        ),
    ),

      );
}

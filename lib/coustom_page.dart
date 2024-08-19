
import 'package:flutter/material.dart';

class CoustomCircle extends StatelessWidget{
  var width;
  var height;
  String? imuil;
  CoustomCircle({required this.width,required this.height, this.imuil});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
              color: Colors.green,
            image: DecorationImage(image: AssetImage(imuil!),fit: BoxFit.cover),
          ),
        )
      ],
    );
  }
}

class CoustomContainer extends StatelessWidget{
  var width;
  var height;
  var child;
  String image;
  CoustomContainer({required this.width,required this.height,required this.child,required this.image});
  @override
  Widget build(BuildContext context) {
    return
      Stack(
      children: [
        Container(
          width: width,
          height:height,
          decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage(image),
           fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(11)
          ),
          child:child
        ),
      ],
    );
  }
}



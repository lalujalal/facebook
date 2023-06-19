import 'package:flutter/material.dart';

class Avathar extends StatelessWidget {
  final String displayImage;
  final bool statusIndicator;
  final bool displayBorder;
  final double width;
  final double height;

  Avathar({
    required this.displayImage,
    required this.statusIndicator,
    this.displayBorder=false,
    this.width=50,
    this.height=50,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: displayBorder ? Border.all(color: Colors.blueAccent,width: 3)
        :Border()),
        padding: EdgeInsets.only(right: 4, left: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(displayImage, width:width, height:height),
        ),
      ),
      statusIndicator ? Positioned(
              bottom: 0,
              right: 1,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            )
          : SizedBox(),
    ]);
  }
}

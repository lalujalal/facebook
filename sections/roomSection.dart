import 'package:facebook/Widgets/avathar.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createroombutton(),
          Avathar(displayImage:dulquer4,statusIndicator: true,),
          Avathar(displayImage: mohanlal,statusIndicator: true),
          Avathar(displayImage: mammooty1,statusIndicator: true),
          Avathar(displayImage: salmankhan,statusIndicator: true),
          Avathar(displayImage: vijay,statusIndicator: true),
          Avathar(displayImage:dulquer4,statusIndicator: true),
          Avathar(displayImage: mohanlal,statusIndicator: true),
          Avathar(displayImage: mammooty1,statusIndicator: true),
          Avathar(displayImage: salmankhan,statusIndicator: true),
          Avathar(displayImage: vijay,statusIndicator: true),
        ],
      ),
    );
  }
  Widget createroombutton(){
    return Container(
      padding: EdgeInsets.only(right: 5,left: 5),
      child: OutlinedButton.icon(
          onPressed: () {
            print("Create to room");
          },
          style: OutlinedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(color: Colors.blue[100]!,width: 2,)
          ),
          icon: Icon(Icons.video_call),
          label: Text("Create \n Room",
            style: TextStyle(
                color: Colors.blue
            ),
          )
      ),
    );
  }
}

import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
class SuggestionCard extends StatelessWidget {
  final String avathar;
  final String name;
  final String mutualFriends;
  final Function() addfriend;
  final Function() removeFriend;

  SuggestionCard({
    required this.avathar,
    required this.name,
    required this.mutualFriends,
    required this.addfriend,
    required this.removeFriend
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails()
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
        bottom: 10, right: 0, left: 0,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]!),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)
              )
          ),
          height: 150,
          child: Column(
            children: [
              ListTile(
                title: Text(name != null ? name : ""),
                subtitle: Text(mutualFriends !=null? mutualFriends:""),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconButton(
                        buttonAction:addfriend,
                        buttonIcon: Icons.add_moderator,
                        buttonColor: Colors.blue[700]!,
                        buttonTextColor: Colors.white,
                        iconColor: Colors.white,
                        buttonText: "Add Friend "
                    ),
                    blankButton(
                        buttonAction:removeFriend,
                        buttonColor: Colors.grey[500]!,
                        buttonTextColor: Colors.black,
                        buttonText: "Remove")
                  ],
                ),
              )
            ],
          ),
        )
    );
  }

  Widget blankButton({
    required Function() buttonAction,
    required Color buttonColor,
    required Color buttonTextColor,
    required String buttonText
  }) {
    return FlatButton(onPressed: buttonAction,
      color: buttonColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: Text(buttonText, style: TextStyle(color: buttonTextColor),),
    );
  }

  Widget iconButton({
    required Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color iconColor,
    required String buttonText
  }) {
    return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonIcon, color: iconColor,),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      color: buttonColor,
      label: Text(buttonText, style: TextStyle(color: buttonTextColor),),
    );
  }

  Widget suggestionImage() {
    return Positioned(
        top: 0, right: 0, left: 0,
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)
            ),
            child: avathar!=null?Image.asset(avathar, fit: BoxFit.cover,)
                :SizedBox(),
        )
    );
  }
}
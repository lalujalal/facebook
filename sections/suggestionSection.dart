import 'package:facebook/Widgets/SuggestionCard.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Container(
height: 450,
child: Column(
children: [
ListTile(
title: Text("People You may know"),
trailing:Icon(Icons.more_horiz,color: Colors.grey[700],),
),
  Container(
    height: 390,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SuggestionCard(
            avathar: salmankhan,
            name: "Salman Khan",
            mutualFriends: "3 Mutual Friends",
            addfriend: (){print("request friend");},
            removeFriend: (){print("remove this friend");}
        ),
        SuggestionCard(
            avathar: vijay,
            name: "Vijay",
            mutualFriends: "2 Mutual Friends",
            addfriend: (){print("request  friend");},
            removeFriend: (){print("remove this friend");}
        ),
        SuggestionCard(
            avathar: prethviraj,
            name: "Prethviraj Sukumaran",
            mutualFriends: "4 Mutual Friends",
            addfriend: (){print("request friend");},
            removeFriend: (){print("remove this friend");}
        )
      ],
    ),
  )
],
),
);
}
}

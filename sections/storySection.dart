import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/Widgets/storyCard.dart';

class StorySection  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "add to story",
            avathar: mammooty1,
            story: dulquer4,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mohanlal",
            avathar: mohanlal,
            story: divalipost,
          ),
          StoryCard(
            labelText: "Mammootty",
            avathar: mammooty1,
            story: childrens,
          ),
          StoryCard(
            labelText: "Dulquer",
            avathar: dulquer4,
            story: dulquerstory1,
          ),
          StoryCard(
            labelText: "Dulquer Salman",
            avathar: dulquer3,
            story: dulquerstory2,
          )
        ],
      ),
    );
  }
}

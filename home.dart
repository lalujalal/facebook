import 'package:facebook/Widgets/headerButton.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/Widgets/postcard.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:flutter/material.dart';
import './Widgets/circularButton.dart';
import './sections/statusSection.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDevider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDevider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: (Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("go to search bar");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("go to chat box");
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDevider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: "Live",
                  buttonIcon: Icons.video_call,
                  buttonColor: Colors.red,
                  buttonAction: () {
                    print("Go to live");
                  }),
              buttonTwo: headerButton(
                  buttonText: "Photos",
                  buttonIcon: Icons.photo_library,
                  buttonColor: Colors.green,
                  buttonAction: () {
                    print("Goto photo album");
                  }),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonColor: Colors.purple,
                  buttonAction: () {
                    print("Go to Room");
                  }),
            ),
            thickDevider,
            RoomSection(),
            thickDevider,
            StorySection(),
            thickDevider,
            Postcard(
              avathar: mohanlal,
              name: "Mohanlal",
              showBlueTick: true,
              publishedAt: "5h",
              postTitle: "Happy Divali",
              postImage: divalipost,
              likeCount: "10k",
              shareCount: "1K",
              commentCount: "1K",
              footerAvatharImage: mohanlal,
            ),
            thickDevider,
            Postcard(
              avathar: mammooty1,
              name: "Mammootty",
              showBlueTick: true,
              publishedAt: "18h",
              postTitle: "Happy Childrens Day",
              postImage: childrens,
              likeCount: "9.5k",
              shareCount: "2K",
              commentCount: "1K",
              footerAvatharImage: mammooty2,
            ),
            thickDevider,
            Postcard(
              avathar: dulquer4,
              name: "Dulquer Salman",
              showBlueTick: true,
              publishedAt: "December 11",
              postTitle: kuruppTitle,
              postImage: dulquer3,
              likeCount: "12k",
              shareCount: "2.5K",
              commentCount: "1K",
              footerAvatharImage: dulquer4,
            ),
            thickDevider,
            SuggestionSection(),
            thickDevider,
            Postcard(
              avathar: prethviraj,
              name: "Prethviraj Sukumaran",
              showBlueTick: true,
              publishedAt: "1 day",
              postTitle: lambdiscrip,
              postImage: lamborgini,
              likeCount: "25k",
              shareCount: "5K",
              commentCount: "10K",
              footerAvatharImage: prethviraj,
            ),
            thickDevider,
            Postcard(
              avathar: dulquer4,
              name: "Dulquer Salman",
              showBlueTick: true,
              publishedAt: "1 month",
              postTitle: salutediscrip,
              postImage: salute ,
              likeCount: "5k",
              shareCount: "500",
              commentCount: "1K",
              footerAvatharImage: dulquer4,
            ),
            thickDevider,
          ],
        ),
      )),
    );
  }
}

import 'package:facebook/Widgets/avathar.dart';
import 'package:facebook/Widgets/blueTick.dart';
import 'package:facebook/Widgets/headerButton.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class Postcard extends StatelessWidget {
  final String avathar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  final String footerAvatharImage;

  Postcard({
    required this.avathar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
    required this.footerAvatharImage,
  });

  @override
  Widget build(BuildContext context) {
    Widget thinDevider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          SizedBox(
            height: 5,
          ),
          footerSection(),
          thinDevider,
          HeaderButtonSection(
            buttonOne: headerButton(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up,
                buttonColor: Colors.grey[700],
                buttonAction: () {
                  print("like posts");
                }),
            buttonTwo: headerButton(
                buttonText: "Comments",
                buttonIcon: Icons.message_outlined,
                buttonColor: Colors.grey[700],
                buttonAction: () {
                  print("Comment on this posts");
                }),
            buttonThree: headerButton(
                buttonText: "Share",
                buttonIcon: Icons.share_outlined,
                buttonColor: Colors.grey[700],
                buttonAction: () {
                  print("Share this posts");
                }),
          )
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      child: Image.asset(postImage),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avathar(
        displayImage: avathar,
        statusIndicator: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("go to more section");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5, top: 5, left: 10, right: 10),
            child: Text(
              postTitle == null ? "" : postTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          )
        : SizedBox();
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up_alt,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Shares"),
                SizedBox(
                  width: 10,
                ),
                Avathar(
                  displayImage: footerAvatharImage,
                  statusIndicator: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                    onPressed: () {
                      print("drope more option");
                    },
                    icon: Icon(Icons.arrow_drop_down)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

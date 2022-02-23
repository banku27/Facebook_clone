import 'dart:math';

import 'package:facebook_ui/models/post_model.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        for (var i = 0; i < postData.length; i++) ...{
          Row(
            children: [
              IconButton(
                iconSize: 50,
                onPressed: () {},
                icon: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(postData[i].avatarImage)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postData[i].name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Wrap(
                        spacing: 10,
                        children: [
                          Text(
                            postData[i].time,
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                          Icon(Icons.public)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.more_horiz_outlined)),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(
                    postData[i].postTitle,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                SizedBox(height: 5),
                Image(image: AssetImage(postData[i].avatarImage)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () => {postData[i].likeOnPressed},
                            icon: Icon(Icons.thumb_up_off_alt_outlined)),
                        Text(postData[i].likes, style: TextStyle(fontSize: 17)),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () => {postData[i].commentOnPressed},
                            icon: Icon(Icons.comment_outlined)),
                        Text(postData[i].comments,
                            style: TextStyle(fontSize: 17)),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () => {postData[i].shareOnPressed},
                            icon: Icon(Icons.share_outlined)),
                        Text(postData[i].shares,
                            style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ],
                ),
                Divider(height: 15, thickness: 6, color: Colors.grey)
              ],
            ),
          )
        }
      ]),
    );
  }
}

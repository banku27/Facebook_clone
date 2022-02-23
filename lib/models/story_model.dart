import 'package:flutter/material.dart';

class StoryModel {
  final VoidCallback onTap;
  final String username;
  final String img;

  StoryModel({required this.username, required this.img, required this.onTap});
}

List<StoryModel> storyData = [
  StoryModel(
      username: "Swati Nambiar", img: 'assets/post/swati1.webp', onTap: () {}),
  StoryModel(
      username: "Himani Kulkarni", img: 'assets/post/himani.jpg', onTap: () {}),
  StoryModel(username: "Aman Singh", img: 'assets/post/aman.jpg', onTap: () {}),
  StoryModel(
      username: "Shruti Bagadia", img: 'assets/post/shruti.png', onTap: () {}),
  StoryModel(
      username: "Aliena Abidi", img: 'assets/post/group.webp', onTap: () {}),
];

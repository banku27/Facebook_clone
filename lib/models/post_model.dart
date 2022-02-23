import 'package:flutter/material.dart';

class PostModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final String likes;
  final String comments;
  final String shares;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel(
      this.avatarOnPressed,
      this.avatarImage,
      this.name,
      this.time,
      this.moreOnPressed,
      this.postTitle,
      this.postImage,
      this.likes,
      this.comments,
      this.shares,
      this.likeOnPressed,
      this.commentOnPressed,
      this.shareOnPressed);
}

List<PostModel> postData = [
  PostModel(
      () {},
      'assets/post/profile.jpg',
      'Bankuu added a new photo',
      'Just Now',
      () {},
      "Don't give up on your dreams. Keep sleeping..",
      'assets/post/profile.png',
      '19',
      '06',
      '07',
      () {},
      () {},
      () {}),
  PostModel(
      () {},
      'assets/post/swati.png',
      'Swati Nambiar',
      'Just Now',
      () {},
      "You know what, what's better than being cool ?? Is being happy ",
      'assets/post/swati.png',
      '59',
      '07',
      '02',
      () {},
      () {},
      () {}),
  PostModel(
      () {},
      'assets/post/deepak.jpg',
      'Deepak Sharma',
      '1 Hour ago',
      () {},
      '',
      'assets/post/deepak.jpg',
      '11',
      '03',
      '02',
      () {},
      () {},
      () {}),
  PostModel(
      () {},
      'assets/post/himani.jpg',
      'Himani Kulkarni',
      '1 Hour ago',
      () {},
      'Make them stop and stare....!!!',
      'assets/post/himani.jpg',
      '22',
      '10',
      '02',
      () {},
      () {},
      () {}),
  PostModel(
      () {},
      'assets/post/bajrang.jpg',
      'Bajrang Aggarwal',
      '2 Hours ago',
      () {},
      'You and me , we are like a small gang...!!!',
      'assets/post/bajrang.jpg',
      '20',
      '5',
      '',
      () {},
      () {},
      () {}),
  PostModel(
      () {},
      'assets/post/aman.jpg',
      'Aman Singh',
      '2 Hours ago',
      () {},
      "Live for the moment you can't put in words.. ",
      'assets/post/aman.jpg',
      '13',
      '06',
      '03',
      () {},
      () {},
      () {}),
  PostModel(
      () {},
      'assets/post/shruti.png',
      'Shruti Bagadia',
      '4 Hours ago',
      () {},
      "Don't let the changing behaviour of others destroy your inner peace",
      'assets/post/shruti.png',
      '08',
      '10',
      '03',
      () {},
      () {},
      () {}),
  PostModel(
      () {},
      'assets/post/aliena.jpg',
      'Aliena Abidi',
      '4 Hours ago',
      () {},
      "Either i will find a way , or I will make one",
      'assets/post/aliena.jpg',
      '51',
      '10',
      '02',
      () {},
      () {},
      () {}),
];

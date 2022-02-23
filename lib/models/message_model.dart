import 'package:flutter/material.dart';

class MessageModel {
  String avatarImg;
  String Name;
  String time;
  Icon status;

  MessageModel({
    required this.avatarImg,
    required this.Name,
    required this.time,
    required this.status,
  });

  static Icon statusOnline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );
  static Icon statusOffline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData = [
  MessageModel(
      avatarImg: 'assets/post/swati.png',
      Name: 'Swati Nambiar',
      time: '12:18',
      status: MessageModel.statusOnline),
  MessageModel(
      avatarImg: 'assets/post/himani.jpg',
      Name: 'Himani Kulkarni',
      time: '12:00',
      status: MessageModel.statusOnline),
  MessageModel(
      avatarImg: 'assets/post/deepak.jpg',
      Name: 'Deepak Sharma',
      time: '11:30',
      status: MessageModel.statusOnline),
  MessageModel(
      avatarImg: 'assets/post/aman.jpg',
      Name: 'Aman Singh',
      time: '11:21',
      status: MessageModel.statusOffline),
  MessageModel(
      avatarImg: 'assets/post/aliena.jpg',
      Name: 'Aliena Abidi',
      time: '10:58',
      status: MessageModel.statusOnline),
  MessageModel(
      avatarImg: 'assets/post/shruti.png',
      Name: 'Shruti Bagadia',
      time: '9:19',
      status: MessageModel.statusOffline),
  MessageModel(
      avatarImg: 'assets/post/abhishek.jpg',
      Name: 'Abhishek Parihar',
      time: '9:05',
      status: MessageModel.statusOnline),
  MessageModel(
      avatarImg: 'assets/post/mohit.jpg',
      Name: 'Mohit Darji',
      time: '07:25',
      status: MessageModel.statusOffline),
];

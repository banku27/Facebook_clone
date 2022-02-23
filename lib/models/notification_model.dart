import 'package:flutter/cupertino.dart';

class NotificationModel {
  final String name;
  final String avatar;
  final String time;
  final String description;

  NotificationModel({
    required this.name,
    required this.avatar,
    required this.time,
    required this.description,
  });
}

List<NotificationModel> notificationData = [
  NotificationModel(
      name: 'Bajrang Aggarwal',
      avatar: 'assets/post/bajrang.jpg',
      time: '8 min ago',
      description: 'Added a new photo.'),
  NotificationModel(
      name: 'Abhishek Parihar',
      avatar: 'assets/post/abhishek.jpg',
      time: '31 min ago',
      description: 'reacted to a photo you are tagged in.'),
  NotificationModel(
      name: '',
      avatar: 'assets/post/himani.jpg',
      time: '2 hour ago',
      description:
          "It's Himani Kulkarni's birthday today.Let her know that you're thinking about her!"),
  NotificationModel(
      name: 'Mohit Darji',
      avatar: 'assets/post/mohit.jpg',
      time: '4 hour ago',
      description: 'liked your profile picture.'),
  NotificationModel(
      name: 'Bankuu',
      avatar: 'assets/post/profile.jpg',
      time: '4 hour ago',
      description: 'accepted your friend request.'),
  NotificationModel(
      name: '',
      avatar: 'assets/post/profile.jpg',
      time: '4 hour ago',
      description:
          "You're now friends with Bankuu! See his photos,posts and more"),
  NotificationModel(
      name: 'Swati Nambiar',
      avatar: 'assets/post/swati.png',
      time: '6 hour ago',
      description: "commented on Himani Kulkarni's post."),
  NotificationModel(
      name: '',
      avatar: 'assets/post/Dev.jpg',
      time: '6 hour ago',
      description: "You have a new friend suggestion: Dev Bathani"),
];

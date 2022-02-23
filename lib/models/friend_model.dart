import 'package:flutter/cupertino.dart';

class FriendModel {
  String name;
  String AvatarImage;

  FriendModel({required this.name, required this.AvatarImage});
}

List<FriendModel> friendData = [
  FriendModel(name: 'Banku', AvatarImage: 'assets/friend/f1.jpg'),
  FriendModel(name: 'Deepak', AvatarImage: 'assets/friend/f2.jpg'),
  FriendModel(name: 'Shushant', AvatarImage: 'assets/friend/f3.png'),
  FriendModel(name: 'Vivek', AvatarImage: 'assets/friend/f4.jpg'),
  FriendModel(name: 'Professor', AvatarImage: 'assets/friend/f5.jpg'),
  FriendModel(name: 'Pankaj', AvatarImage: 'assets/friend/pankaj.jpg'),
  FriendModel(name: 'Ursula', AvatarImage: 'assets/friend/f6.jpg'),
  FriendModel(name: 'Nairobi', AvatarImage: 'assets/friend/f7.jpg'),
  FriendModel(name: 'Helsinki', AvatarImage: 'assets/friend/f8.jpg'),
];

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final String comment;
  final String share;
  final String like;
  final VoidCallback moreOnPressed;
  final String videoPostTitle;
  final String? videoPostLink;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  VideoModel(
      {required this.avatarOnPressed,
      required this.avatarImage,
      required this.name,
      required this.time,
      required this.like,
      required this.comment,
      required this.share,
      required this.moreOnPressed,
      required this.videoPostTitle,
      required this.videoPostLink,
      required this.likeOnPressed,
      required this.commentOnPressed,
      required this.shareOnPressed});
}

List<VideoModel> videoData = [
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "assets/friend/f10.png",
    name: 'Netflix',
    time: '1 hour ago',
    moreOnPressed: () => print('More Clicked'),
    videoPostTitle:
        "The world's greatest heist comes to an end. Last season of Money Heist launching December 3rd, only on Netflix.",
    videoPostLink: YoutubePlayer.convertUrlToId("https://youtu.be/uwsmkWh0S5Y"),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
    like: '1m',
    share: '59',
    comment: '456',
  ),
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "assets/friend/f9.png",
    name: 'Marvel',
    time: '1 hour ago',
    moreOnPressed: () => print('More Clicked'),
    videoPostTitle:
        " “The Multiverse is a concept about which we know frighteningly little.“ Watch the official teaser for Marvel Studios' Doctor Strange in the Multiverse of Madness. Only in theaters May 6",
    videoPostLink: YoutubePlayer.convertUrlToId("https://youtu.be/Rt_UqUm38BI"),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
    like: '7k',
    share: '25',
    comment: '30',
  ),
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "assets/friend/f8.jpg",
    name: 'John',
    time: '4 min ago',
    moreOnPressed: () => print('More Clicked'),
    videoPostTitle:
        'Create a unique atmosphere at your place and watch this nature relax video',
    videoPostLink: YoutubePlayer.convertUrlToId("https://youtu.be/Zv11L-ZfrSg"),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
    like: '35',
    comment: '2',
    share: '',
  ),
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "assets/friend/f6.jpg",
    name: 'Enjoy',
    time: '8 min ago',
    moreOnPressed: () => print('More Clicked'),
    videoPostTitle: """Manike mage hithe', 
'Muduwe nura hangum yawi ',
Awilewi""",
    videoPostLink: YoutubePlayer.convertUrlToId('https://youtu.be/QmLFPCXGVcA'),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
    like: '22',
    comment: '6',
    share: '1',
  ),
  VideoModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: "assets/friend/f6.jpg",
    name: 'South Africa',
    time: '2 hour ago',
    moreOnPressed: () => print('More Clicked'),
    videoPostTitle:
        'Watch full highlights of the South Africa vs Australia at Old Trafford Cricket Ground, Game 45 of the 2019 Cricket World Cup',
    videoPostLink: YoutubePlayer.convertUrlToId('https://youtu.be/6oQL_zspkVE'),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
    like: '19k',
    comment: '2k',
    share: '14',
  ),
];

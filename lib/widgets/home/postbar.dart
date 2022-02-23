import 'package:flutter/material.dart';

class PostBar extends StatefulWidget {
  const PostBar({Key? key}) : super(key: key);

  @override
  _PostBarState createState() => _PostBarState();
}

class _PostBarState extends State<PostBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          iconSize: 60,
          onPressed: () {},
          icon: const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/post/pankaj.jpg')),
        ),
        const Text("What's on your mind ?",
            style: TextStyle(color: Colors.grey, fontSize: 17)),
        Container(
          height: 60,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.photo_album_outlined)),
            const Text('Photo'),
          ],
        ),
      ],
    );
  }
}

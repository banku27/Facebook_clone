import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(Icons.post_add_outlined, color: Colors.blue),
                  Text('Text',
                      style: TextStyle(fontSize: 18, color: Colors.grey))
                ],
              ),
            ),
            Container(
              child: const VerticalDivider(color: Colors.grey),
              height: 40,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(Icons.video_call, color: Colors.redAccent),
                  Text('Live video',
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
            ),
            Container(
              child: const VerticalDivider(color: Colors.grey),
              height: 40,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.redAccent,
                  ),
                  Text(
                    'Location',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

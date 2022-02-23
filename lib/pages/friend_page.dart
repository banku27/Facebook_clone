import 'package:facebook_ui/models/friend_model.dart';
import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Friends',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person, color: Colors.green),
                      iconSize: 27,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.people, color: Colors.red),
                      iconSize: 27,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(
          color: Colors.black38,
          thickness: 1,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: friendData.length,
            itemBuilder: (context, i) => Column(
              children: [
                SizedBox(height: 10),
                ListTile(
                  horizontalTitleGap: 10,
                  leading: CircleAvatar(
                    radius: 21,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(friendData[i].AvatarImage),
                  ),
                  title: Text(friendData[i].name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                  trailing: Wrap(
                    spacing: 10,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('Add Friend',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.blue),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Remove',
                            style:
                                TextStyle(color: Colors.black, fontSize: 17)),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[400],
                          primary: Colors.black,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'dart:ui';

import 'package:facebook_ui/pages/friend_page.dart';
import 'package:facebook_ui/pages/message_page.dart';
import 'package:facebook_ui/pages/profile_page.dart';
import 'package:facebook_ui/pages/video_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: Navigator.of(context).pop,
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text('Menu',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      iconSize: 24,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/post/pankaj.jpg'),
                  radius: 34,
                  backgroundColor: Colors.blueGrey,
                ),
                title: Text('Pankaj Parihar', style: TextStyle(fontSize: 20)),
                subtitle: Text('View your Profile'),
                onTap: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfilePage()))
                },
              ),
              Divider(thickness: 1),
              ListTile(
                leading: Icon(
                  Icons.coronavirus_rounded,
                  color: Colors.redAccent,
                  size: 30,
                ),
                title: Text('Covid-19 Information Center',
                    style: TextStyle(fontSize: 17)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.green,
                  size: 30,
                ),
                title: Text('Message', style: TextStyle(fontSize: 17)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Material(
                              child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0),
                            child: MessagePage(),
                          ))));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.group,
                  color: Colors.blue,
                  size: 30,
                ),
                title: Text('Groups', style: TextStyle(fontSize: 17)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_bag,
                  color: Colors.blue,
                  size: 30,
                ),
                title: Text('Marketplace', style: TextStyle(fontSize: 17)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.people_alt_outlined,
                  color: Colors.green,
                  size: 30,
                ),
                title: Text('Friends', style: TextStyle(fontSize: 17)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Material(
                              child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0),
                            child: FriendPage(),
                          ))));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.video_camera_back,
                  color: Colors.blue,
                  size: 30,
                ),
                title: Text('Videos', style: TextStyle(fontSize: 17)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Material(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: VideoPage(),
                            ),
                          )));
                },
              ),
              ListTile(
                  leading: Icon(
                    Icons.pages,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                  title: Text('Pages', style: TextStyle(fontSize: 17)),
                  onTap: () {}),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 30,
                ),
                title: Text('Settings', style: TextStyle(fontSize: 17)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.privacy_tip,
                  color: Colors.blueGrey,
                  size: 30,
                ),
                title: Text('Privacy Policy', style: TextStyle(fontSize: 17)),
                onTap: () {},
              ),
              ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.grey,
                  ),
                  title: Text(
                    'Help Center',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print('Help Center Tapped')}),
              ListTile(
                leading: Icon(
                  Icons.book,
                  color: Colors.grey,
                ),
                title: Text(
                  'About',
                  style: TextStyle(fontSize: 14),
                ),
                onTap: () => {print('About Tapped')},
              ),
              ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print('Logout Tapped')})
            ],
          ))
        ],
      ),
    );
  }
}

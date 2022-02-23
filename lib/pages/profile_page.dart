// import 'dart:html';

import 'package:facebook_ui/widgets/home/menuu.dart';
import 'package:facebook_ui/widgets/home/post.dart';
import 'package:facebook_ui/widgets/home/postbar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // elevation: 0.0,
          title: Row(children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back, color: Colors.black),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            Text(
              'Pankaj Parihar',
              style: TextStyle(color: Colors.black),
            ),
          ]),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 255,
                  width: 400,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 180,
                            width: 400,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image(
                                  image: AssetImage('assets/post/pic1.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 130,
                        left: 120,
                        child: Container(
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            child: Image.asset(
                              'assets/post/pankaj.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('Pankaj Parihar',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.add_circle),
                            Text('Add to Story')
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            Text('Edit Profile',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[400]),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz_outlined))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 19, vertical: 10),
                      child: Row(
                        children: [
                          Icon(Icons.book),
                          Text('Studied at PARUL INSTITUTE OF TECHNOLOGY',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 19, vertical: 10),
                      child: Row(
                        children: [
                          Icon(Icons.gamepad),
                          Text('Single',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 19, vertical: 10),
                      child: Row(
                        children: [
                          Icon(Icons.info),
                          Text('About',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Friends', style: TextStyle(fontSize: 17)),
                          TextButton(
                            onPressed: () => {},
                            child: Text(
                              'Find Friends',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    PostBar(),
                    Menu(),
                    Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    Post()
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

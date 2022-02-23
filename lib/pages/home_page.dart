import 'package:facebook_ui/models/story_model.dart';
import 'package:facebook_ui/widgets/home/menuu.dart';
import 'package:facebook_ui/widgets/home/post.dart';
import 'package:facebook_ui/widgets/home/postbar.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          PostBar(),
          const Divider(thickness: 1, color: Colors.black26),
          Menu(),
          Divider(
            height: 40,
            color: Colors.grey[300],
            thickness: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 10,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 250,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 170,
                                width: 148,
                                margin: EdgeInsets.only(bottom: 22),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/post/pankaj.jpg')),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Add to Story',
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Positioned(
                            bottom: 48,
                            left: 45,
                            child: IconButton(
                              onPressed: () {},
                              iconSize: 40,
                              icon: Icon(Icons.add_circle_rounded,
                                  color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  for (var i = 0; i < storyData.length; i++) ...{
                    Container(
                      height: 260,
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          GestureDetector(
                            onTap: storyData[i].onTap,
                            child: Container(
                              height: 250,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(storyData[i].img),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 15,
                            child: Text(
                              storyData[i].username,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  }
                ],
              ),
            ),
          ),
          Divider(
            height: 40,
            color: Colors.grey[300],
            thickness: 10,
          ),
          Post(),
        ],
      ),
    );
  }
}

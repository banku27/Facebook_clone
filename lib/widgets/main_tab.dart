import 'package:badges/badges.dart';
import 'package:facebook_ui/pages/friend_page.dart';
import 'package:facebook_ui/pages/home_page.dart';
import 'package:facebook_ui/pages/message_page.dart';
import 'package:facebook_ui/pages/notification_page.dart';
import 'package:facebook_ui/pages/video_page.dart';
import 'package:facebook_ui/widgets/home/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.people_alt_outlined)),
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(
        icon: Badge(
            position: BadgePosition.topEnd(top: -20, end: -5),
            badgeContent:
                Text('3', style: TextStyle(fontSize: 16, color: Colors.white)),
            child: Icon(Icons.notifications_outlined))),
    Tab(icon: Icon(Icons.video_library_outlined)),
  ];

  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this);
    super.initState();
  }

  Future<bool> _onWillPop() async {
    print("on will pop");
    if (_tabController.index == 0) {
      await SystemNavigator.pop();
    }

    Future.delayed(Duration(milliseconds: 200), () {
      print('Set Index');
      _tabController.index = 0;
    });

    print("Return");
    return _tabController.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
                fontSize: 26, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.black),
                splashColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[300]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[300]),
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.black,
            controller: _tabController,
            tabs: topTabs,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          child: MyDrawer(),
        ),
        body: TabBarView(controller: _tabController, children: [
          HomePage(),
          FriendPage(),
          MessagePage(),
          NotificationPage(),
          VideoPage(),
        ]),
      ),
    );
  }
}

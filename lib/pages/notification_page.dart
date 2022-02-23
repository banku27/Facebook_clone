import 'package:facebook_ui/models/notification_model.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Notification',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold)),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.check_circle),
                    color: Colors.black,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                )
              ],
            ),
          ],
        ),
      ),
      Divider(
        thickness: 1,
        color: Colors.black38,
      ),
      Expanded(
        child: ListView.builder(
            itemCount: notificationData.length,
            itemBuilder: (context, i) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(notificationData[i].avatar),
                        radius: 22,
                      ),
                      title: Text(
                        notificationData[i].name +
                            ' ' +
                            notificationData[i].description,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(notificationData[i].time),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_vert)),
                    )
                  ],
                )),
      ),
    ]);
  }
}

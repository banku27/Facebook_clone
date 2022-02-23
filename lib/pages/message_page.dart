import 'package:facebook_ui/models/message_model.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Messages',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message),
                      color: Colors.green,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
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
            itemCount: messageData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(messageData[i].avatarImg),
                    radius: 24,
                  ),
                  title:
                      Text(messageData[i].Name, style: TextStyle(fontSize: 20)),
                  subtitle: Text(messageData[i].time),
                  trailing: messageData[i].status,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

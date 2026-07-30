import 'package:flutter/material.dart';

import 'models/chatList.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List<ChatList> chatList = [
    ChatList(name: "Asim", msg: "Hello", date: "7/22/2026"),
    ChatList(name: "Ahmed", msg: "Hello, How are You?", date: "7/30/2026"),
    ChatList(name: "Hamza", msg: "How are You?", date: "7/20/2026"),
    ChatList(name: "Abdullah", msg: "Im Fine", date: "7/12/2026"),
    ChatList(name: "Ali", msg: "Where are You?", date: "7/30/2026"),
    ChatList(name: "Haris", msg: "Ok Good", date: "7/30/2026"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/first.jpg"),
                        ),
                        title: Text(chatList[index].name),
                        subtitle: Text(chatList[index].msg),
                        trailing: Text(chatList[index].date),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

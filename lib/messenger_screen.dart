// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  MessengerScreen({super.key});
  // ignore: non_constant_identifier_names
  var search_controler = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Container(
          padding: const EdgeInsets.all(10),
          child: const CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/originals/fd/14/a4/fd14a484f8e558209f0c2a94bc36b855.png"),
          ),
        ),
        title: const Text(
          "Chats",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(Icons.photo_camera, size: 18, color: Colors.white),
              )),
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(Icons.edit, size: 18, color: Colors.white),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.all(4),
                  hintText: "Search",
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                )),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 90,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 15),
                  itemCount: 10,
                ),
              ),
              const SizedBox(height: 10),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15),
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() => const SizedBox(
      width: 53,
      child: Column(children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 23,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/fd/14/a4/fd14a484f8e558209f0c2a94bc36b855.png"),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 3, end: 3),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          "Mostafa Ahmed",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 10),
          textAlign: TextAlign.center,
        )
      ]));

  Widget buildChatItem() => Row(children: [
        const Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 23,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/fd/14/a4/fd14a484f8e558209f0c2a94bc36b855.png"),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 3, end: 3),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 7,
          ),
          const Text(
            "Mostafa Ahmed",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.start,
          ),
          Row(children: [
            Text(
              "Hello, good day to you sir.",
              style: TextStyle(color: Colors.grey[600]),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Wed 3:15pm",
              style: TextStyle(color: Colors.grey[600]),
            )
          ])
        ])
      ]);
}

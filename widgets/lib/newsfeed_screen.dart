import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component.dart';
import 'package:widgets/components/newsfeedcomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {
  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
    },
    {
      "username": "justin daw",
      "status": " having a bad day!",
      "likes": "1223",
      "comments": "34" ,
      "shares": "25"
    },
    {
      "username": "bogart lao",
      "status" : "just good",
      "likes" : "25",
      "comments" : "2",
      "shares": "3",
    },
    {"username": "just shi",
     "status": "just not",
     "likes": "55",
     "comments": "4",
     "shares": "55",
     },
    {
      "username": "Jane Smith",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: GlobalappbarComponent(),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: newsfeed.length,
        itemBuilder: (context, index) {
          final post = newsfeed[index];
          return Newsfeedcomponent(
            username: post["username"] ?? '',
            status: post["status"] ?? '',
            numberoflikes: post["likes"] ?? '0',
            numberofcomments: post["comments"] ?? '0',
            numberofshares: post["shares"] ?? '0',
          );
        },
      ),
    );
  }
}

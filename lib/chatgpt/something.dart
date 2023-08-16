import 'package:flutter/material.dart';

void main() {
  runApp(InstagramCloneApp());
}

class InstagramCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InstagramHome(),
    );
  }
}

class InstagramHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Open direct messages
            },
          ),
        ],
      ),
      body: InstagramFeed(),
    );
  }
}

class InstagramFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Number of posts
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/user_profile.png'),
                ),
                title: Text('username'),
                subtitle: Text('Location'),
                trailing: Icon(Icons.more_vert),
              ),
              Image.asset('assets/post_image.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {
                          // Like post
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          // Open comments
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          // Send post
                        },
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.bookmark_border),
                    onPressed: () {
                      // Bookmark post
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '100 likes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'View all 20 comments',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      '2 hours ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        );
      },
    );
  }
}

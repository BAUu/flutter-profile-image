import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: ProfileWidget(
          imageUrl: 'https://i.pinimg.com/originals/3f/fb/b1/3ffbb1ff45985098834eabcf8d55548e.png',
          name: '이한빈',
          phoneNumber: '0000-0000',
          email: 'yimej07@naver.com',
          githubUsername: '@BAUu',
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String phoneNumber;
  final String email;
  final String githubUsername;

  ProfileWidget({
    required this.imageUrl,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.githubUsername,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 80,
          backgroundImage: NetworkImage(imageUrl),
        ),
        SizedBox(height: 30),
        Text(
          name,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                SizedBox(width: 5),
                Text(phoneNumber),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email),
               SizedBox(width: 5),
                Text(email),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.link),
                SizedBox(width: 5),
                Text(githubUsername),
              ],)
          ],
        ),
      ],
    );
  }
}
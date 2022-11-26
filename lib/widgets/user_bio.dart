import 'package:flutter/material.dart';

class UserBio extends StatelessWidget {
  const UserBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 5
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'User Name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Most of these photos are developed and scanned at home by hand',
          ),
          Text(
            'SF,CA',
          ),
          Text(
            'www.andrewmundy.net',
          ),
        ],
      ),
    );
  }
}

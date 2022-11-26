import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            maxRadius: 50,
            backgroundColor: Colors.white54,
            child: Image.asset(
              'assets/images/profile.png',
              fit: BoxFit.contain,
              width: 75,
            ),
          ),
          Column(
            children: const [
              Text(
                '1,498',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Posts',
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Text(
                '598',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Followers',
                style: TextStyle(
                  fontSize: 17,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Text(
                '1,200',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Followings',
                style: TextStyle(
                  fontSize: 17,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

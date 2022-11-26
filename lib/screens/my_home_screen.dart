import 'package:flutter/material.dart';
import '../widgets/images_grid.dart';
import '../widgets/user_bio.dart';
import '../widgets/user_info.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'User Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const UserInfoWidget(),
                  const UserBio(),
                  InkWell(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const Divider(
              height: 4,
              color: Colors.grey,
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.grid_on,
                      size: 30,
                    ),
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.person_pin_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const ImagesGridWidget(),
          ],
        ),
      ),
    );
  }
}

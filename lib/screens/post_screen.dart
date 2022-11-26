import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  final String url;
  final String title;
  const PostScreen({
    super.key,
    required this.url,
    required this.title,
  });

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  var fave = false;
  var saved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage(
              'assets/images/PlaceHolder2.jpg',
            ),
            image: NetworkImage(
              widget.url,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    fave = !fave;
                  });
                },
                icon: fave
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : const Icon(Icons.favorite_border_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
                ),
              ),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      saved = !saved;
                    },
                  );
                },
                icon: saved
                    ? const Icon(
                        Icons.bookmark_outlined,
                        size: 30,
                      )
                    : const Icon(
                        Icons.bookmark_outline,
                        size: 30,
                      ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    'User Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    widget.title,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

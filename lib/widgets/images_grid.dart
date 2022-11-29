import 'package:flutter/material.dart';
import '../screens/post_screen.dart';
import 'package:provider/provider.dart';
import '../provider/post_provider.dart';

class ImagesGridWidget extends StatefulWidget {
  const ImagesGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ImagesGridWidget> createState() => _ImagesGridWidgetState();
}

class _ImagesGridWidgetState extends State<ImagesGridWidget> {
  @override
  void initState() {
    setState(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Provider.of<PostProvider>(context, listen: false).getPostData();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var isLoading = Provider.of<PostProvider>(context).loading;
    return Consumer<PostProvider>(
      builder: (_, value, __) {
        return Container(
          color: Colors.black12,
          height: 5000,
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 100,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (_, index) {
                    return Container(
                      //color: Colors.red,
                      child: value.loading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                child: const FadeInImage(
                                  fadeInDuration: Duration(
                                    seconds: 1,
                                  ),
                                  placeholder: AssetImage(
                                    'assets/images/PlaceHolder2.jpg',
                                  ),
                                  image: NetworkImage(
                                      // value.posts[index].thumbnailUrl!,
                                      'https://wallpapergram.ir/wp-img/WallpaperGram.IR_1662039432_3785.jpg'),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PostScreen(
                                      url: value.posts[index].url!,
                                      title: value.posts[index].title!,
                                    ),
                                  ),
                                );
                              },
                            ),
                    );
                  },
                  itemCount: value.posts.length,
                ),
        );
      },
    );
  }
}

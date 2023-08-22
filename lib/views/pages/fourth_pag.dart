import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/main.dart';
import 'package:flutter_api_bloc/views/pages/fifth_page.dart';
import 'package:flutter_api_bloc/models/posts.dart';

import '../posts_state_widgets.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({
    super.key,
  });

  // Page name
  static const name = 'fourthPage/';

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  late List<Post> fourthPagePosts;
  static const fourthPagePostsStartingIndex = 30;
  static const fourthPagePostsEndingIndex = 40;

  @override
  void initState() {
    super.initState();
    fourthPagePosts =
        posts.sublist(fourthPagePostsStartingIndex, fourthPagePostsEndingIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Fourth Page'),
          actions: [
            IconButton(
                onPressed: () {
                  // Navigating to Fifth page

                  Navigator.pushNamed(context, FifthPage.name);
                },
                icon: const Icon(
                  Icons.navigate_next_rounded,
                ))
          ],
        ),
        body: PostLoadedWidget(posts: fourthPagePosts));
  }
}

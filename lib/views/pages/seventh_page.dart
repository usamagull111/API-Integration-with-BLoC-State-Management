import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/main.dart';
import 'package:flutter_api_bloc/views/pages/eighth_page.dart';
import 'package:flutter_api_bloc/models/posts.dart';

import '../posts_state_widgets.dart';

class SeventhPage extends StatefulWidget {
  const SeventhPage({
    super.key,
  });
// Page name
  static const name = 'seventhPage/';

  @override
  State<SeventhPage> createState() => _SeventhPageState();
}

class _SeventhPageState extends State<SeventhPage> {
  late List<Post> seventhPagePosts;
  static const seventhPagePostsStartingIndex = 60;
  static const seventhPagePostsEndingIndex = 70;

  @override
  void initState() {
    super.initState();
    seventhPagePosts = posts.sublist(
        seventhPagePostsStartingIndex, seventhPagePostsEndingIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Seventh Page'),
          actions: [
            IconButton(
                // Navigating to Eighth page

                onPressed: () {
                  Navigator.pushNamed(context, EighthPage.name);
                },
                icon: const Icon(
                  Icons.navigate_next_rounded,
                ))
          ],
        ),
        body: PostLoadedWidget(posts: seventhPagePosts));
  }
}

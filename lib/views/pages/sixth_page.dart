import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/main.dart';
import 'package:flutter_api_bloc/views/pages/seventh_page.dart';
import 'package:flutter_api_bloc/models/posts.dart';

import '../posts_state_widgets.dart';

class SixthPage extends StatefulWidget {
  const SixthPage({
    super.key,
  });

// Page name
  static const name = 'sixthPage/';

  @override
  State<SixthPage> createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  late List<Post> sixthPagePosts;
  static const sixthPagePostsStartingIndex = 50;
  static const sixthPagePostsEndingIndex = 60;

  @override
  void initState() {
    super.initState();
    sixthPagePosts =
        posts.sublist(sixthPagePostsStartingIndex, sixthPagePostsEndingIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Sixth Page'),
          actions: [
            IconButton(
                onPressed: () {
                  // Navigating to Seventh page

                  Navigator.pushNamed(context, SeventhPage.name);
                },
                icon: const Icon(
                  Icons.navigate_next_rounded,
                ))
          ],
        ),
        body: PostLoadedWidget(posts: sixthPagePosts));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/main.dart';
import 'package:flutter_api_bloc/views/pages/tenth_page.dart';
import 'package:flutter_api_bloc/models/posts.dart';

import '../posts_state_widgets.dart';

class NinthPage extends StatefulWidget {
  const NinthPage({
    super.key,
  });
  // page name

  static const name = 'ninthPage/';

  @override
  State<NinthPage> createState() => _NinthPageState();
}

class _NinthPageState extends State<NinthPage> {
  late List<Post> ninthPagePosts;
  static const ninthPagePostsStartingIndex = 80;
  static const ninthPagePostsEndingIndex = 90;

  @override
  void initState() {
    super.initState();
    ninthPagePosts =
        posts.sublist(ninthPagePostsStartingIndex, ninthPagePostsEndingIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Ninth Page'),
          actions: [
            IconButton(
                onPressed: () {
                  // Navigating to Tenth page

                  Navigator.pushNamed(context, TenthPage.name);
                },
                icon: const Icon(
                  Icons.navigate_next_rounded,
                ))
          ],
        ),
        body: PostLoadedWidget(posts: ninthPagePosts));
  }
}

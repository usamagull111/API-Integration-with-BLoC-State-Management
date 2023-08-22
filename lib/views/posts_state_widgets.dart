import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/models/posts.dart';

// Initial state corresponding widget

class PostInitialWidget extends StatelessWidget {
  const PostInitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Initialization'),
    );
  }
}

// Loading state corresponding widget

class PostLoadingWidget extends StatelessWidget {
  const PostLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

// Loaded state corresponding widget

class PostLoadedWidget extends StatelessWidget {
  const PostLoadedWidget({required this.posts, super.key});
  final List<Post> posts;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return Future.delayed(const Duration(seconds: 1));
      },
      child: CustomScrollView(
        slivers: [
          SliverList.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(10.0),
              child: PostListTile(
                  post: posts[index],
                  context: context,
                  titleColor: Colors.blue.shade200),
            ),
          ),
        ],
      ),
    );
  }
}

// Error state corresponding widget

class PostErrorWidget extends StatelessWidget {
  const PostErrorWidget({required this.errorMessage, super.key});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: TextStyle(color: Colors.red.shade900),
      ),
    );
  }
}

// PostListTile for Loaded state widget

class PostListTile extends ListTile {
  final Post post;
  final BuildContext context;
  final Color titleColor;
  PostListTile(
      {required this.titleColor,
      required this.context,
      required this.post,
      super.key})
      : super(
          tileColor: titleColor,
          subtitle: FittedBox(child: Text(post.title.toString())),
          trailing: SizedBox(
              height: ((MediaQuery.sizeOf(context).height) * 0.5),
              child: FittedBox(child: Text(post.body))),
        );
}

import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/models/posts.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    double heightOfContainer = MediaQuery.sizeOf(context).height * 0.25;
    double widthOfContainer = MediaQuery.sizeOf(context).width;
    //show item on UI using listView
    return Container(
        color: Colors.blue.shade200,
        height: heightOfContainer,
        width: widthOfContainer,
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: heightOfContainer * 0.05,
              ),
              Text(
                post.title,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: heightOfContainer * 0.05,
              ),
              Text(post.body, textAlign: TextAlign.center),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/controller/bloc/post_bloc.dart';
import 'package:flutter_api_bloc/models/posts.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'navigation/on_generate_rout.dart';
import 'views/pages/first_page.dart';

List<Post> posts = List.empty();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: onGenerateRout,
        initialRoute: FirstPage.name,
      ),
    );
  }
}

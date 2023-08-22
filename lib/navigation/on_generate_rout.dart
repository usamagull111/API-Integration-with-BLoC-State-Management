import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/views/pages/eighth_page.dart';
import 'package:flutter_api_bloc/views/pages/error_page.dart';
import 'package:flutter_api_bloc/views/pages/fifth_page.dart';
import 'package:flutter_api_bloc/views/pages/fourth_pag.dart';
import 'package:flutter_api_bloc/views/pages/first_page.dart';
import 'package:flutter_api_bloc/views/pages/ninth_page.dart';
import 'package:flutter_api_bloc/views/pages/second_page.dart';
import 'package:flutter_api_bloc/views/pages/seventh_page.dart';
import 'package:flutter_api_bloc/views/pages/sixth_page.dart';
import 'package:flutter_api_bloc/views/pages/tenth_page.dart';
import 'package:flutter_api_bloc/views/pages/third_page.dart';

// onGenerateRout function for Navigation

Route<dynamic>? onGenerateRout(RouteSettings settings) {
  if (settings.name == FirstPage.name) {
    return MaterialPageRoute(
      builder: (context) => const FirstPage(),
    );
  } else if (settings.name == SecondPage.name) {
    return MaterialPageRoute(
      builder: (context) => const SecondPage(),
    );
  } else if (settings.name == ThirdPage.name) {
    return MaterialPageRoute(
      builder: (context) => const ThirdPage(),
    );
  } else if (settings.name == FourthPage.name) {
    return MaterialPageRoute(
      builder: (context) => const FourthPage(),
    );
  } else if (settings.name == FifthPage.name) {
    return MaterialPageRoute(
      builder: (context) => const FifthPage(),
    );
  } else if (settings.name == SixthPage.name) {
    return MaterialPageRoute(
      builder: (context) => const SixthPage(),
    );
  } else if (settings.name == SeventhPage.name) {
    return MaterialPageRoute(
      builder: (context) => const SeventhPage(),
    );
  } else if (settings.name == EighthPage.name) {
    return MaterialPageRoute(
      builder: (context) => const EighthPage(),
    );
  } else if (settings.name == NinthPage.name) {
    return MaterialPageRoute(
      builder: (context) => const NinthPage(),
    );
  } else if (settings.name == TenthPage.name) {
    return MaterialPageRoute(
      builder: (context) => const TenthPage(),
    );
  } else {
    return MaterialPageRoute(builder: (context) => const ErrorPage());
  }
}

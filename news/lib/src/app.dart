import 'package:flutter/material.dart';
import "screens/news_list.dart";
import 'blocs/stories_provider.dart';
import 'screens/news_detail.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return StoriesProvider(
      child: MaterialApp(
        title: 'News!',
        onGenerateRoute: routes,
      ),
    );
  }

  Route routes(RouteSettings settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(
        builder: (context) {
          return NewsList();
        },
      );
    } else {
      return MaterialPageRoute(
        builder: (context) {
          final itemId = int.parse(settings.name.replaceFirst('/', ''));
          // need code to extract the item id from settings.name and pas sint newsdtails
          // a fantastic location to initialize or data fetching for newsDetails
          return NewsDetail(
            itemId: itemId,
          );
        },
      );
    }
  }
}

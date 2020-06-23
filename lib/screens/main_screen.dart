import 'package:flutter/material.dart';
import 'package:flutter_ui_cinema_app/components/card_scroll_widget.dart';
import 'package:flutter_ui_cinema_app/components/movies_page_view_container.dart';
import 'package:flutter_ui_cinema_app/components/new_movies_list.dart';
import 'package:flutter_ui_cinema_app/components/small_movie_list_item.dart';
import 'package:flutter_ui_cinema_app/components/top_bar.dart';
import 'package:flutter_ui_cinema_app/data.dart';
import 'package:flutter_ui_cinema_app/models/movie.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MyData data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TopBar(),
          SizedBox(
            height: 30.0,
          ),
          MoviesPageViewContainer(),
          NewMoviesList(),
        ],
      ),
    );
  }
}
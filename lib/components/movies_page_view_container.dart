import 'package:flutter/material.dart';
import 'package:flutter_ui_cinema_app/models/movie.dart';

import '../data.dart';
import 'card_scroll_widget.dart';


class MoviesPageViewContainer extends StatefulWidget {

  @override
  _MoviesPageViewContainerState createState() => _MoviesPageViewContainerState();
}

class _MoviesPageViewContainerState extends State<MoviesPageViewContainer> {
  var currentPage;
  MyData data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = MyData();
    currentPage = data.moviesList.length - 1;
    data.moviesList.forEach((m) {
      print(m.name);
    });
  }
  @override
  Widget build(BuildContext context) {
    List<Movie> movieList = data.moviesList;
    PageController controller =
        PageController(initialPage: movieList.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });
    return Container(
      child: Stack(
        children: [
          CardScrollWidget(
            currentPage: currentPage,
            length: data.moviesList.length,
            movies: data.moviesList,
          ),
          Positioned.fill(
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
                itemCount: data.moviesList.length,
                reverse: true,
                controller: controller,
                itemBuilder: (_, i) {
                  return Container();
                }),
          )
        ],
      ),
    );
  }
}
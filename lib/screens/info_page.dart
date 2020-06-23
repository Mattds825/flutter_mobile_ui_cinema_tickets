import 'package:flutter/material.dart';
import 'package:flutter_ui_cinema_app/components/info_page_booking_info.dart';
import 'package:flutter_ui_cinema_app/components/info_page_movie.dart';
import 'package:flutter_ui_cinema_app/components/info_page_movie_info.dart';
import 'package:flutter_ui_cinema_app/models/movie.dart';

class InfoPage extends StatelessWidget {
  final Movie movie;

  const InfoPage({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          InfoPageImage(movie: movie),
          InfoPageMovieInfo(movie: movie),
          InfoPageBookingInfo()
        ],
      ),
    );
  }
}

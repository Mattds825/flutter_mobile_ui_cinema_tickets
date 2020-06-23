import 'package:flutter/material.dart';
import 'package:flutter_ui_cinema_app/components/small_movie_list_item.dart';

import '../data.dart';


class NewMoviesList extends StatelessWidget {

  MyData data = MyData();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New Movies',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: double.maxFinite,
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.moviesList.length,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SmallMovieListItem(movie: data.moviesList[i],),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

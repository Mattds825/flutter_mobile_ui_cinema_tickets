import 'package:flutter/material.dart';
import 'package:flutter_ui_cinema_app/models/movie.dart';
import 'package:flutter_ui_cinema_app/screens/info_page.dart';

class SmallMovieListItem extends StatelessWidget {
  final Movie movie;

  const SmallMovieListItem({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80.0,
        height: 160.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(movie.image),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => InfoPage(movie: movie,)));
              },
            ),
            Text(
              movie.name,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              movie.runtime,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ));
  }
}

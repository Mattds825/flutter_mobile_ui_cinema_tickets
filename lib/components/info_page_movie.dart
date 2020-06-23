import 'package:flutter/material.dart';
import 'package:flutter_ui_cinema_app/models/movie.dart';


class InfoPageImage extends StatelessWidget {
  const InfoPageImage({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.5,
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)),
        child: Image.asset(movie.image, fit: BoxFit.cover,),
      ),
    );
  }
}
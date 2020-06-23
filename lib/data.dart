import 'package:flutter_ui_cinema_app/models/movie.dart';

class MyData {
  List<Movie> moviesList = List();

  MyData() {
    _createMovies();
  }

  get() {
    return moviesList;
  }

  _createMovies() {
    moviesList.add(
      Movie(
        name: 'Antman and The Wasp',
        runtime: '1h40min',
        synopsis:
            'Despite being under house arrest, Scott Lang, along with the Wasp, sets out to help Dr Hank Pym to enter the quantum realm as they face new enemies along the way.',
        image: 'assets/ant_man.jpg',
      ),
    );
    moviesList.add(Movie(
      name: 'The Equalizer 2',
      runtime: '1h40min',
      synopsis:
          'Robert McCall\'s best friend, Susan Plummer, is murdered while investigating a murder-suicide crime. As a former spy, he leverages his skills and resources to find the culprit.',
      image: 'assets/equalizer.jpg',
    ));
    moviesList.add(
      Movie(
        name: 'Jurrasic World 2',
        runtime: '1h40min',
        synopsis:
            'A theme park showcasing genetically-engineered dinosaurs turns into a nightmare for its tourists when one of the dinosaurs escapes its enclosure. An ex-military animal expert steps up to save the day.',
        image: 'assets/jurrasic_world.jpg',
      ),
    );
    moviesList.add(
      Movie(
        name: 'Mamammia',
        runtime: '1h40min',
        synopsis:
            'As Sophie and her family are busy preparing for her wedding, she secretly invites three men, who were her mother\'s lovers in the past, with the hope that one of them is her father.',
        image: 'assets/mamammia.png',
      ),
    );
    moviesList.add(
      Movie(
        name: 'Skyscraper',
        runtime: '1h40min',
        synopsis:
            'After Will Sawyer, who assesses security for skyscrapers, is accused of a blaze in the safest building in the world, he must prove himself innocent and save his family from the burning building.',
        image: 'assets/skyscraper.jpg',
      ),
    );
    moviesList.add(
      Movie(
        name: 'The Spy Who Dumped Me',
        runtime: '1h40min',
        synopsis:
            'Best friends Audrey and Morgan are going about their humdrum lives in Los Angeles -- until Audre\'s ex-boyfriend suddenly shows up with a team of deadly assassins on his trail. Unexpectedly thrust into an international conspiracy, the gals soon find themselves dodging killers and a suspicious British agent while hatching a plan to save the world.',
        image: 'assets/spy.jpg',
      ),
    );
    moviesList.add(
      Movie(
        name: 'Hotel Transilvania 2',
        runtime: '1h40min',
        synopsis:
            'Dracula is concerned for his beloved half-human, half-vampire grandson, Dennis, when he notices that he is not showing any signs of being a vampire.I',
        image: 'assets/transilvania.jpg',
      ),
    );
    moviesList.add(
      Movie(
        name: 'Venom',
        runtime: '1h40min',
        synopsis:
            'While trying to take down Carlton, the CEO of Life Foundation, Eddie, a journalist, investigates experiments of human trials. Unwittingly, he gets merged with a symbiotic alien with lethal abilities.',
        image: 'assets/venom.png',
      ),
    );
  }
}

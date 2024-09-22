import 'package:movie_stream/models/actor_model.dart';
import 'package:movie_stream/models/movie_model.dart';

class MovieData {
  static List<MovieModel> movies = [
    MovieModel('assets/images/poster4.jpg',
        name: 'A Quiet Place 2', duration: '1h 37m', rating: '4.2'),
    MovieModel('assets/images/poster3.png',
        name: 'The Flash', duration: '8 seasons', rating: '4.0'),
    MovieModel('assets/images/poster5.jpg',
        name: 'Money Heist', duration: '5 seasons', rating: '8.2'),
  ];
  static List<MovieModel> movies2 = [
    MovieModel('assets/images/poster8.jpg',
        name: 'Furie', duration: '1h 38m', rating: '4.0'),
    MovieModel('assets/images/poster6.jpg',
        name: 'Joker', duration: '2h 2m', rating: '4.2'),
    MovieModel('assets/images/poster7.jpg',
        name: 'Leo', duration: '2h 44m', rating: '7.2'),
  ];
  static List<MovieModel> movies3 = [
    MovieModel('assets/images/poster4.jpg',
        name: 'A Quiet Place 2', duration: '1h 37m', rating: '4.2'),
    MovieModel('assets/images/poster3.png',
        name: 'The Flash', duration: '8 seasons', rating: '4.0'),
    MovieModel('assets/images/poster5.jpg',
        name: 'Money Heist', duration: '5 seasons', rating: '8.2'),
    MovieModel('assets/images/poster8.jpg',
        name: 'Furie', duration: '1h 38m', rating: '4.0'),
    MovieModel('assets/images/poster6.jpg',
        name: 'Joker', duration: '2h 2m', rating: '4.2'),
    MovieModel('assets/images/poster7.jpg',
        name: 'Leo', duration: '2h 44m', rating: '7.2'),
  ];

  static List<ActorModel> actors = [
    ActorModel(image: 'assets/images/actor1.jpg', name: 'Robert Downey'),
    ActorModel(image: 'assets/images/actor2.jpg', name: 'Samuel l jackson'),
    ActorModel(image: 'assets/images/actor4.jpg', name: 'Emma watson'),
    ActorModel(image: 'assets/images/actor3.jpg', name: 'Margot robbie'),
  ];
}

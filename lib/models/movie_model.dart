class MovieModel {
  final String name;
  final String image;
  final String duration;
  final String rating;

  MovieModel(this.image, 
      {required this.name, required this.duration, required this.rating});
}

class Movie {
  final String name;
  final String imagePath;
  Movie({
    required this.name,
    required this.imagePath,
  });
}

List<Movie> movies = [
  Movie(
    name: 'Hindi',
    imagePath: 'img/images1.jpeg',
  ),
  Movie(
    name: 'English',
    imagePath: 'img/images2.jpeg',
  ),
  Movie(
    name: 'Drama',
    imagePath: 'img/images3.jpeg',
  ),
  Movie(
    imagePath: 'img/images4.jpeg',
    name: 'Telugu',
  ),
  Movie(
    imagePath: 'img/images5.jpeg',
    name: 'Bollywood',
  ),
  Movie(
    imagePath: 'img/images6.jpeg',
    name: 'Tamil',
  ),
];

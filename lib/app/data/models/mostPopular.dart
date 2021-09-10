class MostPopularModel {
  String name;
  String type;
  double stars;
  String image;
  MostPopularModel(
      {required this.name,
      required this.type,
      required this.stars,
      required this.image});
}

final List<MostPopularModel> mostPopular = [
  MostPopularModel(
      name: 'Cafe De Bamba', type: 'Western Food', stars: 4.9, image: ''),
  MostPopularModel(
      name: 'Burger by Cafe De Bamba',
      type: 'Western Food',
      stars: 4.9,
      image: ''),
  MostPopularModel(
      name: 'Cafe De Bamba', type: 'Western Food', stars: 4.9, image: ''),
  MostPopularModel(
      name: 'Cafe De Bamba', type: 'Western Food', stars: 4.9, image: '')
];

class RecentItemsModel {
  String name;
  int ratings;
  double stars;
  String type;
  String image;
  String uploadedResturant;
  RecentItemsModel(
      {required this.name,
      required this.ratings,
      required this.stars,
      required this.type,
      required this.image,
      required this.uploadedResturant});
}

List<RecentItemsModel> recentData = [
  RecentItemsModel(
      name: 'MulberryPizza ',
      ratings: 124,
      stars: 4.9,
      image: 'assets/images/alireza.png',
      type: 'WesternFood',
      uploadedResturant: '  Josh'),
  RecentItemsModel(
      name: 'Barita ',
      ratings: 124,
      stars: 4.9,
      image: 'assets/images/hyaro.png',
      type: 'WesternFood',
      uploadedResturant: '  Josh'),
  RecentItemsModel(
      name: 'Pizza Rush Hour ',
      ratings: 124,
      stars: 4.9,
      image: 'assets/images/alireza.png',
      type: 'WesternFood',
      uploadedResturant: '  Josh'),
  RecentItemsModel(
      name: 'MulberryPizza ',
      ratings: 124,
      stars: 4.9,
      image: 'assets/images/alireza.png',
      type: 'WesternFood',
      uploadedResturant: '  Josh'),
];

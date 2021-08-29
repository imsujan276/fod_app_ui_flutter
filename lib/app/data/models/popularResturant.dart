import 'package:food_delivery/app/constants/images.dart';

class PopularResturantModel {
  String name;
  int ratings;
  double stars;
  String type;
  String image;
  PopularResturantModel(
      {required this.name,
      required this.ratings,
      required this.stars,
      required this.type,
      required this.image});
}

List<PopularResturantModel> resturantData = [
  PopularResturantModel(
      name: 'Minute by tuk tuk',
      ratings: 172,
      stars: 4.9,
      type: 'Western Food',
      image: AppImages.aurelin),
  PopularResturantModel(
      name: 'Cafe de Noir',
      ratings: 172,
      stars: 4.9,
      type: 'Western Food',
      image: AppImages.heather),
  PopularResturantModel(
      name: 'Bakes by Tella',
      ratings: 172,
      stars: 4.9,
      type: 'Western Food',
      image: AppImages.prakash),
];

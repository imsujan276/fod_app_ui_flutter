import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/constants/strings.dart';

class CategoryItem {
  String name;
  String icon;

  CategoryItem({required this.name, required this.icon});
}

List<CategoryItem> categoryData = [
  CategoryItem(icon: AppImages.alireza, name:Strings.offers),
  CategoryItem(icon: AppImages.hyaro, name: 'Sri Lankan '),
  CategoryItem(icon: AppImages.italian, name: ' Italian'),
  CategoryItem(icon: AppImages.tea, name: ' Indian'),
  CategoryItem(icon: AppImages.tea, name: ' Italian'),
  CategoryItem(icon: AppImages.tea, name: ' Italian'),
  CategoryItem(icon: AppImages.tea, name: ' Italian'),
  CategoryItem(icon: AppImages.tea, name: ' Italian'),
];

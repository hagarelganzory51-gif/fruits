import 'package:fruits_app/core/constants/image_app.dart';

class CategoryModel {
  String image;
  CategoryModel({required this.image});
}
List<CategoryModel> categoryList = [
  CategoryModel(image: ImageApp.image1),
  CategoryModel(image: ImageApp.image2),
  CategoryModel(image: ImageApp.image3),
  CategoryModel(image: ImageApp.image4),
];

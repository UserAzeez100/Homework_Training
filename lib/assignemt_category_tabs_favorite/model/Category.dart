
class Category {
  String id;
  String title;
  String imageUrl;
  bool favoriteState;
  List<String>? textList;


  Category(
      {required this.id, required this.title, required this.imageUrl, this.favoriteState=false,this.textList});
}

import 'package:flutter/material.dart';


class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  CategoryItem(this.title, this.imageUrl, this.id);

  selectCategoryPush(BuildContext contextItem) {
    Navigator.of(contextItem).pushNamed("/categoryTripsScreen",
        arguments: {"id": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => selectCategoryPush(context),
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 5, right: 5),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageUrl,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.4),
              ),
            )
          ],
        ),
      ),
    );
  }
}

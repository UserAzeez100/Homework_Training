
import 'package:flutter/material.dart';

class CategoryTabItem extends StatelessWidget {

  String url;
  String title;


  CategoryTabItem({required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),

      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              url,
              height: 40,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.3),borderRadius: BorderRadius.circular(8)),width: 120,height: 40, )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ItemCategoryWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.0, vertical: 14.0,
      ),
      margin: EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
        color: Color(0xff5D6DFF),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Icon(
            Icons.ac_unit_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 6.0,
          ),
          Text(
            "Art & Cultures",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.0
            ),
          ),
        ],
      ),
    );
  }
}
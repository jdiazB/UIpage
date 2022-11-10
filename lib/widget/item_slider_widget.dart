import 'package:flutter/material.dart';

class ItemSliderWidget extends StatelessWidget {

  Function onMandarina;
  Map<String, dynamic> place;

  ItemSliderWidget({
    required this.onMandarina,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(12),
        splashColor: Colors.black12,
        onTap: (){
          onMandarina();
        },
      child: Container(
        margin: EdgeInsets.only(right: 14.0),
        width: 210,
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.black12,
            image: DecorationImage(
                image: NetworkImage(
                     place["image"] ),),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xff34383F).withOpacity(0.6),
                        Colors.transparent,
                      ]),
                  boxShadow: [
                    BoxShadow(
                        color:
                        Color(0xff34383F).withOpacity(0.12),
                        blurRadius: 12.0,
                        offset: Offset(0, 4)),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place["place"],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "${place["rate"]} (${place["reviews"]} views)",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.normal,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


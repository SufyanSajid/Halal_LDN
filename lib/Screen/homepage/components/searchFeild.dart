import 'package:flutter/material.dart';

class Searchfeild extends StatelessWidget {
  const Searchfeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.,
          children: [
            Icon(
              Icons.search,
              color: Color.fromRGBO(6, 200, 127, 1),
              size: 40,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Location,Restaurant or Cuisine',
              style: TextStyle(
                color: Color.fromRGBO(6, 200, 127, 1),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

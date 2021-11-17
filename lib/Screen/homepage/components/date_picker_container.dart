import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DatePickerContainer extends StatelessWidget {
  const DatePickerContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
      padding: EdgeInsets.symmetric(horizontal: 20),
      
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15,
        ),
        //border: Border.a
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: SvgPicture.asset(
              'assets/images/user.svg',
              height: 20,
            ),
          ),
          Container(
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/calender.svg',
                  height: 20,
                ),
                Text(
                  '6 Nov 2021',
                  style: TextStyle(
                    color: Color.fromRGBO(6, 200, 127, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SvgPicture.asset(
              'assets/images/Path 242.svg',
              //color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

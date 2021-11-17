import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_ldn/Screen/homepage/components/date_picker_container.dart';
import 'package:halal_ldn/Screen/homepage/components/letsgo.dart';
import 'package:halal_ldn/Screen/homepage/components/searchFeild.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/images/homepage_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.black.withOpacity(0.4),
          body: Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      //text1
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        width: double.infinity,
                        child: const Text(
                          'Halal LDN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 85,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      //text 2
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: double.infinity,
                        child: const Text(
                          'Find Table in Halal Restaurant',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      //DatePicker Container
                      DatePickerContainer(),
                      //search Container
                      Searchfeild(),
                      //LetsGo Conatiner Container
                      LetsGo(),
                    ],
                  ),
                ),
                Text(
                  'In KayCharPur',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match/util/const/style/global_text_styles.dart';

import '../../../util/const/style/global_color.dart';
class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 355,
      height: 60,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 355,
              height: 60,
              decoration: ShapeDecoration(
                color: Color(0xFFFFF6F3),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0x33F4A58A)),
                  borderRadius: BorderRadius.circular(33),
                ),
              ),
            ),
          ),
          Positioned(
            left: 25,
            top: 10,
            child: Container(
              width: 306,
              height: 40,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 10,
                    child: SizedBox(
                      width: 46,
                      child: Text(
                        'Sports',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF959595),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 68,
                    top: 0,
                    child: Container(
                      width: 94,
                      height: 40,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 94,
                              height: 40,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.78, -0.62),
                                  end: Alignment(-0.78, 0.62),
                                  colors: [Color(0xFFF4A58A), Color(0xFFED6B4E)],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(33),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 17,
                            top: 10,
                            child: Text(
                              'Matches',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 184,
                    top: 10,
                    child: Text(
                      'Upcoming',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF959595),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 279,
                    top: 10,
                    child: Text(
                      'Live',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF959595),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



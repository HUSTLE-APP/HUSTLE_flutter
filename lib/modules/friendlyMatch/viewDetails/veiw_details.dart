import 'package:match/util/const/style/global_color.dart';

import '../calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controller/details_controller.dart';
import '../calendar/event/event.dart';
import '../apply/apply_form.dart';
import 'package:intl/intl.dart';

class ViewDetails extends StatelessWidget {
  final Event event;

  ViewDetails({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('교류전'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                event.title,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Card(
                color: AppColors.mainColor.withOpacity(0.2),
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildDetailRow(
                          '일시',
                          event.date != null
                              ? DateFormat('yyyy-MM-dd').format(event.date!)
                              : '날짜 미정'),
                      buildDetailRow('장소', event.place ?? '장소 미정'),
                      buildDetailRow('동아리명', event.clubName ?? '동아리 미지정'),
                      buildDetailRow('연락처', event.phone ?? '연락처 미정'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Divider(
                  color: Colors.grey,
                  thickness: 2.0,
                  indent: 20.0,
                  endIndent: 20.0),
              SizedBox(height: 8.0),
              buildImageRow('위치', event.imagePath),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => ApplyFormScreen());
                },
                child: Text('교류전 신청하기'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    minimumSize: Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    textStyle:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              )
            ]),
      ),
    );
  }
}

Widget buildDetailRow(String label, String value) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget buildImageRow(String label, String? imagePath) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8.0,
        ),
        imagePath != null
            ? Image.asset(imagePath, width: 100, height: 100)
            : Text('위치 사진 없음'),
      ],
    ),
  );
}

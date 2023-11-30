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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event.title,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            buildDetailRow('일시',
                event.date != null ? DateFormat('yyyy-MM-dd').format(
                    event.date!) : '날짜 미정'),
            buildDetailRow('장소', event.place ?? '장소 미정'),
            buildDetailRow('동아리명', event.clubName ?? '동아리 미지정'),
            buildDetailRow('연락처', event.phone ?? '연락처 미정'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ApplyFormScreen());
              },
              child: Text('교류전 신청하기'),
            ),
          ],
        ),
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

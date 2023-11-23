import '../friendlyMatch/calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/viewDetails/controller/details_controller.dart';
import '../../modules/friendlyMatch/calendar/event/event.dart';

class ViewDetails extends StatelessWidget {
  final Event event;

  ViewDetails({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이벤트 상세'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              event.title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              event.description,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 24.0),
            if (event.postId != null)
              Text(
                '게시물 ID: ${event.postId}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

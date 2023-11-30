import 'package:flutter/material.dart';
import 'package:match/util/const/style/global_color.dart';

class ApplyFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('교류전 신청'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '동아리 명',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                  hintText: '동아리 명을 입력하세요.',
                  hintStyle: TextStyle(color: AppColors.mainColor),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor))),
            ),
            SizedBox(height: 10.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '대표자 정보',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                  hintText: '이름을 입력하세요.',
                  hintStyle: TextStyle(color: AppColors.mainColor),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor))),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: '연락처을 입력하세요.',
                  hintStyle: TextStyle(color: AppColors.mainColor),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor))),
            ),
            // 다른 TextField 위젯들을 추가하세요...
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // 폼 데이터를 검증하고 처리한 후 모달 창을 띄웁니다.
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('교류전'),
                      content: Text('신청이 완료되었습니다.'),
                      actions: <Widget>[
                        Container(
                          width: double.infinity, // 버튼 너비 AlterDialog의 너비에 맞춤
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.mainColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text('확인'),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('신청하기'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  textStyle:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  minimumSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
          ],
        ),
      ),
    );
  }
}

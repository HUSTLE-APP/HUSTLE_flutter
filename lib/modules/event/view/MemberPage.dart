import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  final String universityName;
  final String clubNames;

  MemberPage({
    required this.universityName,
    required this.clubNames,
  });

  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  bool isApplying = false;

  // 함수 추가: 모달 창 표시
  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('신청 확인'),
          content: isApplying
              ? Text('신청이 완료되었습니다.')
              : Text('가입을 신청하시겠습니까?'),
          actions: <Widget>[
            if (!isApplying)
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // 모달 닫기
                },
                child: Text('취소'),
              ),
            TextButton(
              onPressed: () {
                // 여기에 가입 또는 확인 동작 추가
                setState(() {
                  isApplying = true;
                });
                Navigator.of(context).pop(); // 모달 닫기
              },
              child: Text(isApplying ? '확인' : '가입하기'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '동아리',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF0066FF)),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: _clubProfile(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Image.asset('asset/image/logo/iv_hustle_logo.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    child: Text(
                      '안녕하세요, [동아리 이름]입니다!우리 동아리는 열정적이고 목표 지향적인 농구 열매들이 모여 꿈을 키우는 공간입니다. 농구의 매력과 함께 성장하고자 하는 당신을 환영합니다. [동아리 이름]은 농구를 사랑하며 그 뜻을 함께 나누는 커뮤니티입니다. 스포츠의 힘을 느끼며 동시에 친목과 협업의 가치를 중시합니다. 팀원 간의 소통과 협력을 바탕으로, 농구를 통해 성장하는 소중한 경험을 쌓을 수 있는 기회를 제공하고 있습니다. 저희 동아리는 꾸준한 연습과 다양한 대회 참가를 통해 팀원들의 실력을 향상시키고 있습니다. ',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // 모달 창 표시 함수 호출
                  _showConfirmationDialog();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(330.0, 46.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  textStyle: TextStyle(fontSize: 18.0),
                  backgroundColor: isApplying ? Colors.grey : Color(0xFF0066FF),
                ),
                child: Text(isApplying ? '신청 완료' : '가입하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _clubProfile() {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4.0),
          Text('가톨릭대학교', style: TextStyle(fontSize: 18.0)),
          SizedBox(height: 4.0),
          Text('바스타즈', style: TextStyle(fontSize: 18.0)),
          SizedBox(height: 4.0),
          Text('010-9876-5432', style: TextStyle(fontSize: 18.0)),
          SizedBox(height: 4.0),
          Text('bababa@gmail.com', style: TextStyle(fontSize: 18.0)),
          SizedBox(height: 4.0),
          Text('54명', style: TextStyle(fontSize: 18.0)),
          SizedBox(height: 4.0),
        ],
      ),
    );
  }
}

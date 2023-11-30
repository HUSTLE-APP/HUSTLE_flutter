import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DummyMember {
  final String name;
  final String birth;
  final String gender;
  bool isSelected;
  DummyMember(this.name, this.birth, this.gender, this.isSelected);
}

class ManagerPage extends StatefulWidget {
  // final String universityName;
  // final String clubNames;

  // ManagerPage({
  //   required this.universityName,
  //   required this.clubNames,
  // });

  @override
  _ManagerPageState createState() => _ManagerPageState();
}

class _ManagerPageState extends State<ManagerPage> {
  bool isApplying = false;
  TextEditingController textEditingController = TextEditingController(); // 새로 추가한 부분

  List<DummyMember> dummyMembers = [
    DummyMember('김정환', '990422', '남', false),
    DummyMember('최정환', '990422', '남', false),
    DummyMember('박정환', '990422', '남', false),
    DummyMember('강정환', '990422', '남', false),
    DummyMember('오정환', '990422', '남', false),
    DummyMember('윤정환', '990422', '남', false),
    DummyMember('홍정환', '990422', '남', false),
    DummyMember('홍정환', '990422', '남', false),
    DummyMember('홍정환', '990422', '남', false),
    DummyMember('홍정환', '990422', '남', false),
    DummyMember('홍정환', '990422', '남', false),
    DummyMember('홍정환', '990422', '남', false),
    DummyMember('홍정환', '990422', '남', false),
    DummyMember('홍정환', '990422', '남', false),
  ];

  List<DummyMember> dummyMembersPage3 = [
    DummyMember('김태웅', '990422', '남', false),
    DummyMember('최우진', '990422', '남', false),
    DummyMember('박지연', '990422', '여', false),
    DummyMember('강태형', '990422', '남', false),
    DummyMember('오윤미', '990422', '여', false),
    DummyMember('윤지웅', '990422', '남', false),
    DummyMember('홍정호', '990422', '남', false),
    DummyMember('이지예', '990422', '여', false),
    DummyMember('김정환', '990422', '남', false),
    DummyMember('김정환', '990422', '남', false),
    DummyMember('김정환', '990422', '남', false),
    DummyMember('김정환', '990422', '남', false),
    DummyMember('김정환', '990422', '남', false),
  ];

  List<DummyMember> selectedItems = [];

  void _removeSelectedItems() {
    setState(() {
      dummyMembers.removeWhere((item) => item.isSelected);
      selectedItems.clear();
    });
  }

  // 1page 함수 추가: 모달 창 표시
  void _showConfirmationDialogSave() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('저장 확인'),
          content: isApplying
              ? Text('저장이 완료되었습니다.')
              : Text('변경된 내용을 저장하시겠습니까?'),
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
              child: Text(isApplying ? '확인' : '저장하기'),
            ),
          ],
        );
      },
    );
  }

  void _showConfirmationDialogRemove() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('동아리 폐부'),
          content: isApplying
              ? Text('신청이 완료되었습니다.')
              : Text('정말 동아리를 폐부하시겠습니까? (폐부된 동아리의 정보는 삭제됩니다.)'),
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
    return MaterialApp(home:DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              color: Color(0xFF6889FF), // 선택된 탭의 배경 색상
            ),
            tabs: [
              Tab(text: '팀 소개',),
              Tab(text: '팀 선수관리',),
              Tab(text: '팀 가입 승인',),
            ]
          ),
          title: Text(
            '동아리',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF0066FF)),
        ),
      body: TabBarView(
        children: [
          _ManagerPageCustom(),
          _memberManage(),
          _memberAgree(),
        ],
      ),
    ),
    ),
    );
  }

  Widget _universityTile() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: dummyMembers.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(10.0),
                child: _clubTile(dummyMembers[index]));
          },
        ),
      ],
    );
  }

  Widget _clubTile(DummyMember university) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Checkbox(
          value: university.isSelected,
          onChanged: (bool? value) {
            setState(() {
              university.isSelected = value ?? false;
              if (university.isSelected) {
                print('선택: ${university.name}');
              } else {
                print('선택 해제: ${university.name}');
              }
            });
          },
        ),
        title: Text(university.name),
        subtitle: Text('${university.birth} / ${university.gender}'),
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

          _buildTextField("대학 이름", "가톨릭대학교"),

          _buildTextField("동아리 이름", "바스타즈"),

          _buildTextField("전화번호", "010-9876-5432"),

          _buildTextField("이메일", "bababa@gmail.com"),


        ],
      ),
    );
  }

  Widget _buildTextField(String label, String initialValue) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: '값을 입력하세요',
      ),
      controller: TextEditingController(text: initialValue),
      readOnly: false, // 읽기 전용으로 설정하여 수정 불가능하도록 함
    );
  }

  Widget _buildTextFieldIntro(String initialValue) {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: InputDecoration(
        hintText: '동아리 소개글을 입력해주세요.',
      ),
      controller: TextEditingController(text: initialValue),
      readOnly: false, // 읽기 전용으로 설정하여 수정 불가능하도록 함
    );
  }

  // 1page 메인
  Widget _ManagerPageCustom(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 700,
        width: 1000,
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
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
                      child: _buildTextFieldIntro(
                        '안녕하세요, 바스타즈입니다!우리 동아리는 열정적이고 목표 지향적인 농구 열매들이 모여 꿈을 키우는 공간입니다. 농구의 매력과 함께 성장하고자 하는 당신을 환영합니다. [동아리 이름]은 농구를 사랑하며 그 뜻을 함께 나누는 커뮤니티입니다. 스포츠의 힘을 느끼며 동시에 친목과 협업의 가치를 중시합니다. 팀원 간의 소통과 협력을 바탕으로, 농구를 통해 성장하는 소중한 경험을 쌓을 수 있는 기회를 제공하고 있습니다. 저희 동아리는 꾸준한 연습과 다양한 대회 참가를 통해 팀원들의 실력을 향상시키고 있습니다. '
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0, right: 10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // 모달 창 표시 함수 호출
                          _showConfirmationDialogSave();
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150.0, 46.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          textStyle: TextStyle(fontSize: 18.0),
                          backgroundColor: isApplying ? Colors.grey : Color(0xFF0066FF),
                        ),
                        child: Text(isApplying ? '신청 완료' : '저장하기'),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 20.0, left: 10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // 모달 창 표시 함수 호출
                          _showConfirmationDialogRemove();
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150.0, 46.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          textStyle: TextStyle(fontSize: 18.0),
                          backgroundColor: isApplying ? Colors.grey : Color(0xFFEE7B7B),
                        ),
                        child: Text(isApplying ? '신청 완료' : '동아리 폐부'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //2page 메인
  Widget _memberManage(){
    return Container(

      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 40, top: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(

                onPressed: (){
                  _removeSelectedItems();
                },
                child: const Text('방출'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEE7B7B),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: _universityTile(),
            ),
          ),
        ],
        // Expanded(
        //   child: ,
        // ),
      ),
    );
  }

  // 3page 메인
  Widget _memberAgree(){
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: _dummymemberTile(),
            ),
          ),
        ],
        // Expanded(
        //   child: ,
        // ),
      ),
    );
  }

  Widget _dummymemberTile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: dummyMembersPage3.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                margin: EdgeInsets.all(10.0),
                child: _memberTile(dummyMembersPage3[index]));
          },
        ),
      ],
    );
  }

  Widget _memberTile(DummyMember university) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text('${university.name} / ${university.birth} / ${university.gender}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(top: 3, right: 5, left: 3),
              child: Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(

                  onPressed: (){
                    _removeSelectedItems();
                  },
                  child: const Text('수락'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0066FF),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 3, right: 5, left: 3),
              child: Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(

                  onPressed: (){
                    _removeSelectedItems();
                  },
                  child: const Text('거절'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEE7B7B),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

}



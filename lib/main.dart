import 'package:flutter/material.dart';

// 코드 시작점
void main() {
  // 루트 위젯을 만들어 주는 함수
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // MyApp 클래스안에 메서드 만들어 보기
  Column _buildButtonColumn(IconData iconData, Color color, String label) {
    return Column(
      children: [
        // 아이콘
        Icon(iconData, color: color),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        )
        // 텍스트
      ],
    );
  }

  // 화면 그려주는 함수
  @override
  Widget build(BuildContext context) {
    // 지역 변수 생성 코드
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        // 정렬 방향(가로) 공간 띄우기 (양 끝으로 붙고 나머지 공간)
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 컬럼 (텍스트1,2)
          Column(
            // 교차축방향(가로) 왼쪽 정렬
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandersteg, Switzerland'),
            ],
          ),
          const Spacer(),
          // 아이콘
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          // 텍스트 41
          Container(
            margin: const EdgeInsets.only(top: 2),
            child: Text('41'),
          ),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildButtonColumn(Icons.call, Colors.cyan, 'CALL'),
        _buildButtonColumn(Icons.near_me, Colors.cyan, 'ROUTE'),
        _buildButtonColumn(Icons.share, Colors.cyan, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        // 글자수가 많을 때 줄바꿈 기능
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'layout1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout1'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        // 화면 가운데 위치
        // 스크롤
        body: ListView(
          children: [
            Image.asset(
              'assets/lake.jpeg',
              width: 620,
              height: 240,
              // 여백 채우기
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

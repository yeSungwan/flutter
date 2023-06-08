import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: '자기 소개 포트폴리오',
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.blue[30],
          appBar: AppBar(
            title: Text('자기소개 포트폴리오'),
          ),
          body: TabBarView(
            children: [
              Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/tmddhks.jpg'),
                      ),
                        ),
                      padding: EdgeInsets.symmetric(horizontal: 35),
                    ),
                    Container(
                      child: Text('\n\n예승완 \n\n 전화번호 : 010-2011-4533 \n 이메일 : tmddhks68@gmail.com \n 주소 : 부산광역시 부산진구 당감로 79'),
                    )
                  ],
                )
              ),
              Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('\n 성명 : 예승완 \n 생년월일 : 1999.08.07 \n 주소 : 부산광역시 부산진구 당감로 79 \n 연락처 : 010-2011-4533\n'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('졸업년도'),),
                          DataColumn(label: Text('출신학교'),),
                        ],

                        rows: [
                          DataRow(cells: [
                            DataCell(Text('2012.02')),
                            DataCell(Text('동양초등학교 졸업')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('2015.02')),
                            DataCell(Text('동양중학교 졸업')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('2018.02')),
                            DataCell(Text('개성고등학교 졸업')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('2024.02')),
                            DataCell(Text('경성대학교 소프트웨어학과 졸업예정')),
                          ]),
                        ]
                      ),
                    )
                  ],
                )
              ),
              Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Text('자격증 : ADsP, DAsP\n\n'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Text('프로젝트 : http://219.249.43.80//index.html'),
                    )
                  ],
                )
              ),
            ],
          ),
        bottomNavigationBar: TabBar(tabs: [
          Tab(
            text: '메인',
          ),
          Tab(
            text: '인적',
          ),
          Tab(
            text: '학술',
          )
        ]),
      )),
    );
  }
}
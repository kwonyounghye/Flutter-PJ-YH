// 로고 SVG 위젯 /////////////

// svg를 출력하려면 추가 위젯을 설치해야함!
// pub.dev 공식 위젯 사이트로 가서
// 'flutter_svg'를 검색함
// -> installing 탭에서 검색 명령어 확인
// flutter pub add 앱이름
// ->>> 설치 후 확인은 pubspec.yaml 파일에서 함

import 'package:flutter/material.dart';
// SVG를 읽기 위한 추가설치 위젯
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  // 타이틀값을 입력받아 처리하기 위한 변수 선언
  final String title;
  // 생성자함수에 전달변수로 처리(this 키워드 사용)
  const Logo(this.title,{Key? key}) : super(key: key);

// 빌드 재정의!
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. SVG로고
        SvgPicture.asset(
          // svg 이미지 경로 설정
          'assets/logo.svg',
          // 크기 지정(비율이 있으면 한쪽만 씀)
          width: 70,
        ),
        // 2. 타이틀
        Text(
          // 생성자함수 호출 시 값을 받아 처리(글자)
          title,
          // 글자 스타일
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
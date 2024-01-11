// 입력폼양식 위젯 ////////////

import 'package:app_04_login/components/custom_text_form_field.dart';
import 'package:app_04_login/size.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  // -> 입력폼

  // const형으로 만들면 변수를 반드시 추가해야하므로
  // 위의 전역변수는 다른 용도이므로 const형으로 
  CustomForm({Key? key}) : super(key: key);

// 빌드 재정의!
  @override
  Widget build(BuildContext context) {
    return Form(
      // 전역 key를 Form에 연결하여 해당 key로
      // Form상태를 관리한다! 필수!!!
      key: _formKey,
      // 구성요소 속성 : 수직방향 위젯 사용!
      child: Column(
        children: [
        // 1. 이메일 입력양식(글자+입력폼)
        CustomTextFormField('Email'),
        SizedBox(height: largeGap),
        // 2. 비밀번호 입력양식(글자+입력폼)
         CustomTextFormField('Password'),
        SizedBox(height: largeGap),
        // 3. TextButton : 로그인버튼
        TextButton(onPressed: () {
          // debugPrint('나눌렸어?');
              // 라우터이동은 Navigator
              // pushNamed() 메서드로!!!

// 유효성검사에 전역키를 사용함!!
      // 유효성검사 셋팅한 메서드로
      // 페이지 이동함!
      if(_formKey.currentState!.validate()) {
        Navigator.pushNamed(context, '/home');
      }
        }, 
      child: Text('Login'),

    )
      ]),
      
);
  }
}

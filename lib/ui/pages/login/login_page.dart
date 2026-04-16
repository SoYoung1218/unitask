import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:task_app/app/extensions/sized_box_extension.dart';
import 'package:task_app/app/router/app_page.dart';
import 'package:task_app/ui/common/label_text_field.dart';
import 'package:task_app/ui/common/text_divider.dart';
/* import 'package:task_app/app/extensions/snackbar_extension.dart'; */

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .all(20),
        child: Center(
          child: Column(
            mainAxisSize: .min,
            children: [
              Icon(LucideIcons.graduationCap, size: 50),
            Text(
              'UniTask',
                style: TextStyle(
                fontSize: 28,
                fontWeight: .bold
              ),
            ),
            Text('과제 관리를 스마트하게'),
            50.heightBox,

            LabelTextField(
              label: '이메일', 
              hintText: 'example@naver.com',
              icon: LucideIcons.mail,
            ),

            20.heightBox,

            LabelTextField(label: '비밀번호',
            hintText: '000000',
            icon: LucideIcons.lockKeyhole,
            enableObscure: true,
            ),

            //패스워드 찾기 버튼
            Align(
              alignment: .centerRight,
              child: TextButton(
                onPressed: (){},
                  child: Text('비밀번호를 잊으셨나요?'),
                ),
            ),
                 
                20.heightBox,


            //로그인 버튼
            SizedBox(
              width: .infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '로그인',
                  style: TextStyle(fontWeight: .bold, fontSize: 20),
                ),
              ),
            ),

            20.heightBox,

            const TextDivider(text: '또는'),

            20.heightBox,

          Row(
            mainAxisSize: .min,
                children: [
                  Text('계정이 없으신가요?'),
                  TextButton(
                    onPressed: () {
                      context.pushNamed(AppPage.signup.name);
                    },
                    child: const Text('회원가입'),
                  ), //TextButton
                 ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

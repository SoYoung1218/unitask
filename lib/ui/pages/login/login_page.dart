import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:task_app/app/extensions/sized_box_extension.dart';
import 'package:task_app/ui/common/label_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: .min,
        children: [
          Icon(
            LucideIcons.graduationCap,
          size: 50
          ),
          Text('UniTask',
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
            const LabelTextField(label: '비밀번호',
            hintText: '000000',
            icon: LucideIcons.lockKeyhole,
            ),
            //패스워드 찾기 버튼
            Align(
              alignment: .centerRight,
              child: TextButton(
                onPressed: (){}, 
                child: const Text(
                  '비밀번호를 잊으셨나요?',
                ),
              ),
            ) , 
            //로그인 버튼
            ElevatedButton(
              onPressed: () {}, 
              child: const Text(
                '로그인',
                style: TextStyle(
                  fontWeight: .bold,
                  fontSize: 18,
                ),
              )
            ),             
          Row(
            children: [
              Expanded(child: Divider()),
              Text('또는',
                style: TextStyle(color: Colors.grey,
                ),
              ),
              Expanded(child: Divider()),
            ],
          )
        ],
      ),
    );
  }
}
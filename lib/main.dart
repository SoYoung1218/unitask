import 'package:flutter/material.dart';
import 'package:task_app/app/theme/app_theme.dart';

import 'app/router/app_router.dart';

void main() {
  runApp(const UniTaskApp());
}

class UniTaskApp extends StatelessWidget {
  const UniTaskApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: .system,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: appRouter,
      /*debugShowCheckedModeBanner: false, 애뮬 상단 위 디버그 지우는 법*/
    );
  }
}

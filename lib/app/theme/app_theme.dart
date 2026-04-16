import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData.light(useMaterial3: true).copyWith(
    brightness: .light,
    visualDensity: .adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFF3B82F6),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF3B82F6), //배경 위 색 forgroundColor
        shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF3B82F6),
        padding: const .symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ), // RoundedRectangleBorder
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFFF9FAFB),
      prefixIconColor: const Color(0xFF9CA3AF),
      //prefixIconConstraints: const BoxConstraints(minHeight: 10, maxWidth: 10),
      hintStyle: const TextStyle(
        color: Color(0xFF9CA3AF), //
      ),
      border: OutlineInputBorder(
        borderRadius: .circular(12),
        borderSide: BorderSide.none,
      ),
    ),
  );

  //dark테마
  static ThemeData get dark => ThemeData.dark(useMaterial3: true).copyWith(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: const Color(0xFF111827),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFF3B82F6), // 메인 포인트 색상은 유지
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF3B82F6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF3B82F6),
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ), //RoundedRectangleBorder
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1F2937),
      prefixIconColor: const Color(0xFF9CA3AF),
      hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

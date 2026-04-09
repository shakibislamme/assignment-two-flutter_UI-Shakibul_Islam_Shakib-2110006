import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() => runApp(const StudentBankingApp());

class StudentBankingApp extends StatelessWidget {
  const StudentBankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(
          0xFFF1F4F8,
        ), // ইমেজের মতো হালকা গ্রে ব্যাকগ্রাউন্ড
      ),
      home: const MainScreen(),
    );
  }
}

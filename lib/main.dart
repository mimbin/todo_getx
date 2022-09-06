import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      builder: (context, child) {
        return const MaterialApp(
          home: Home(),
          title: 'Task Manager',
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

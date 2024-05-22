import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 메인 함수
void main() {
  runApp(const MyApp());
}

// 메인 애플리케이션 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // 기본 경로 설정
      initialRoute: '/',
      // 라우트 설정
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/about', page: () => const AboutPage()),
        GetPage(name: '/contact', page: () => const ContactPage()),
      ],
    );
  }
}

// 홈 페이지 위젯
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/about');
                },
                child: const Text('Go to About Page')),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/contact');
              },
              child: const Text('Go to Contact Page'),
            ),
          ],
        ),
      ),
    );
  }
}

// 어바웃 페이지 위젯
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: const Center(
        child: Text('This is the About Page'),
      ),
    );
  }
}

// 컨택트 페이지 위젯
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Page'),
      ),
      body: const Center(
        child: Text('This is the Contact Page'),
      ),
    );
  }
}

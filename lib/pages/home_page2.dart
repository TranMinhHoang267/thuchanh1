import 'package:flutter/material.dart';

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hình ảnh logo
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: Image.asset(
                'assets/images/10.png', // Đảm bảo đường dẫn đúng
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Text(
                      'Image not found',
                      style: TextStyle(color: Colors.red),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            // Thông tin kích thước
            const Text(
              '216 x 233',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
            const SizedBox(height: 10),
            // Mô tả
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Jetpack Compose is a modern toolkit for building native Android applications using a declarative programming approach.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),
            // Nút "I'm ready"
            ElevatedButton(
              onPressed: () {
                // Ví dụ: Điều hướng sang một màn hình mới
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button Pressed!')),
                );
                // Nếu muốn điều hướng, bạn có thể dùng:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors
                        .blue, // Thay primary thành backgroundColor (Flutter 3.0+)
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
              ),
              child: const Text(
                'I\'m ready',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  //   runApp(
  //     MaterialApp(
  //       title: 'Flutter Demo',
  //       debugShowCheckedModeBanner: false,
  //       debugShowMaterialGrid: false,
  //       home: Scaffold(
  //         body: Center(
  //           child: Text(
  //             'Hello, World!',
  //             style: TextStyle(
  //               fontSize: 24,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.blue,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );

  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          // Menggunakan Column untuk menumpuk semua teks ke bawah
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MyText(),
              SizedBox(height: 20),
              NewStyleText(),
              SizedBox(height: 20),
              OverflowText(),
              SizedBox(height: 20),
              AlignmentText(),
              SizedBox(height: 20),
              RichTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'ASPROTECH CORP',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}

class NewStyleText extends StatelessWidget {
  const NewStyleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sedang Belajar Widget Flutter & Dart',
      style: TextStyle(
        fontSize: 18,
        fontStyle: FontStyle.italic,
        color: Colors.green,
        letterSpacing: 2,
        shadows: [
          Shadow(offset: Offset(3, 3), blurRadius: 5, color: Colors.grey),
        ],
      ),
    );
  }
}

class OverflowText extends StatelessWidget {
  const OverflowText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Ini adalah contoh teks yang sangat panjang dan melebihi batas lebar layar. Teks ini akan dipotong dan diganti dengan titik-titik jika terlalu panjang untuk ditampilkan sepenuhnya.',
      textAlign: TextAlign.center,
      maxLines: 2, // Batasi cuma boleh tampil maksimal 2 baris
      overflow: TextOverflow
          .ellipsis, // Kalau kepanjangan, potong dan kasih titik-titik (...)
      style: TextStyle(fontSize: 16, color: Colors.black54),
    );
  }
}

class AlignmentText extends StatelessWidget {
  const AlignmentText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            width: double
                .infinity, //PAKE Double.infinity biar teksnya bisa full lebar
            child: Text(
              'Teks Rata Kiri (Left)',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Teks Rata Tengah (Center)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Teks Rata Kanan (Right)',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Justify: Flutter adalah framework untuk membuat aplikasi menggunakan satu codebase yang responsif.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(8),
      ),
      child: RichText(
        text: const TextSpan(
          style: TextStyle(fontSize: 18, color: Colors.black),
          children: [
            TextSpan(text: 'Mari belajar Flutter '),
            TextSpan(
              text: 'Flutter',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            TextSpan(text: ' dan '),
            TextSpan(
              text: 'Dart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

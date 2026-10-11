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
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Biar posisinya pas di tengah layar
          children: [
            MyText(), // Teks lama kamu (ASPROTECH CORP)
            SizedBox(height: 20), // Spasi jarak ke bawah
            NewText(),
          ],
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'ASPROTECH CORP',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
        letterSpacing: 3,
        decoration: TextDecoration.underline,
      ),
    );
  }
}

class NewText extends StatelessWidget {
  const NewText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Belajar widget flutter',
      style: TextStyle(
        fontSize: 18,
        fontStyle: FontStyle.italic,
        color: Colors.green,
        letterSpacing: 2, // Contoh materi spasi dari dokumen
      ),
    );
  }
}

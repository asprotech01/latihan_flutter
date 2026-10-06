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
    return Scaffold(body: Center(child: const myText()));
  }
}

class myText extends StatelessWidget {
  const myText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, World!',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}

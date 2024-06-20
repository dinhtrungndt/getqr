import 'package:flutter/material.dart';
import 'package:getqr/api/getQR.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 200),
                color: Colors.blue,
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => getQR()));
                }, child: const Text('Get API QR', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),),),
              ),
            ),
        ],
      )
    );
  }
}

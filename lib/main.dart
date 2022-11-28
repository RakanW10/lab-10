import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Icon icon = Icon(
    Icons.alarm_on,
    size: 100,
  );
  Image image =
      Image.asset("images/WhatsApp Image 2022-11-28 at 1.34.23 PM.jpeg");
  String str = "Alart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                width: 10,
                height: 50,
              ),
              image,
              const SizedBox(
                width: 10,
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  setState(() {
                    if (str == "Alart") {
                      image = Image.asset(
                          "images/WhatsApp Image 2022-11-28 at 1.34.24 PM.jpeg");
                      str = "Stop Alart";
                    } else {
                      image = Image.asset(
                          "images/WhatsApp Image 2022-11-28 at 1.34.23 PM.jpeg");
                      str = "Alart";
                    }
                  });
                },
                child: Text(
                  str,
                  style: TextStyle(fontSize: 36),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter username",
              hintStyle: TextStyle(
                color: Colors.blue.withOpacity(0.6),
                fontFamily: "Georgia"
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)
              ),
            ),
            style: const TextStyle(
              color: Colors.blue,
              fontFamily: "Georgia"
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              hintStyle: TextStyle(
                color: Colors.blue.withOpacity(0.6),
                fontFamily: "Georgia"
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)
              ),
            ),
            style: const TextStyle(
              color: Colors.blue,
              fontFamily: "Georgia"
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Login")
          )
        ],
      )
    );
  }
}


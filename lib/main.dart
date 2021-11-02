import 'package:flutter/material.dart';
import 'package:flutter_custom_checkbox/custom_checkbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Checkbox'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Center(child: Text('Custom Checkbox Demo')),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Custom_Checkbox(
              isChecked: isChecked,
              onChange: (value) {
                isChecked = value;
                print(isChecked);
              },
              backgroundColor: Colors.black,
              borderColor: Colors.red,
              icon: Icons.close,
              size: 40,
              iconSize: 30,
            ),
          )
        ],
      ),
    );
  }
}

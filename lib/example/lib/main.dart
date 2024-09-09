import 'package:flutter/material.dart';
import 'package:custom_scroll_package/custom_scroll_package.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Scrollbar Example')),
        body: CustomScrollbar(
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) =>
                ListTile(title: Text('Item $index')),
          ),
        ),
      ),
    );
  }
}

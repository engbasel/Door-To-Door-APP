import 'package:flutter/material.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Brands Screen'),
      ),
      body: Center(
        child: Text('Brands Screen'),
      ),
    );
  }
}

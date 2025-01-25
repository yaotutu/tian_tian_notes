import 'package:flutter/material.dart';
import 'package:tian_tian_notes/pages/start/index.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  Widget _buildBtn(BuildContext context, String text,Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(text),
  );
  }

  Widget _buildView (BuildContext context) {
    return Column(
      children: [
        _buildBtn(context, 'Start', StartPage()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tian Tian Notes'),
      ),
      body: _buildView(context),
    );
  }
}
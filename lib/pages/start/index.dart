
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'index.g.dart';

@riverpod
String hello(Ref ref) => 'Hello, Riverpod!';

class StartPage extends ConsumerWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tian Tian Notes'),
      ),
      body: Center(
        child: Text(ref.watch(helloProvider)),
      ),
    );
  }
}
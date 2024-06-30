import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Feed(),
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  late final _colorScheme = Theme.of(context).colorScheme;
  late final _backgroundColor = Color.alphaBlend(
      _colorScheme.primary.withOpacity(0.14), _colorScheme.surface);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: _backgroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _colorScheme.tertiaryContainer,
        foregroundColor: _colorScheme.onTertiaryContainer,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

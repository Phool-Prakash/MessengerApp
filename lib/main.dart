import 'package:flutter/material.dart';
import 'package:messenger_app/destinations/destinations.dart';
import 'package:messenger_app/model/data.dart' as data;
import 'package:messenger_app/widgets/email_list_view.dart';
import 'model/models.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Feed(
        currentUser: data.user_0,
      ),
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({super.key, required this.currentUser});
  final User currentUser;
  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  late final _colorScheme = Theme.of(context).colorScheme;
  late final _backgroundColor = Color.alphaBlend(
      _colorScheme.primary.withOpacity(0.14), _colorScheme.surface);

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: _backgroundColor,
            child: EmailListView(
              selectedIndex: selectedIndex,
              onSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              currentUser: widget.currentUser,
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: _colorScheme.tertiaryContainer,
          foregroundColor: _colorScheme.onTertiaryContainer,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: NavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          destinations: destinations.map<NavigationDestination>((d) {
            return NavigationDestination(icon: Icon(d.icon), label: d.label);
          }).toList(),
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ));
  }
}

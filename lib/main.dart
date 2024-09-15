import 'package:flutter/material.dart';
import 'constant/colors.dart';
import 'components/home/tabbed_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gift Memo',
      theme: colorTheme,
      home: const MyHomePage(title: 'Gift Memo'),
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
    return const DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TabbedAppBar(),
          body: TabBarView(
            children: [
              Center(child: Icon(Icons.redeem)),
              Center(child: Icon(Icons.redeem)),
              Center(child: Icon(Icons.person_outline)),
            ],
          ),
        ));
  }
}

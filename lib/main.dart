import 'package:flutter/material.dart';
import 'constant/colors.dart';
import 'components/home/tabbed_app_bar.dart';
import 'view/calendar_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Flutterの初期化を確認
  await dotenv.load(fileName: '.env');
  await Supabase.initialize(
    url: dotenv.get('API_URL'),
    anonKey: dotenv.get('ANON_KEY'),
  );

  //  とりあえずここでログインしておく
  await Supabase.instance.client.auth.signInWithPassword(
    email: dotenv.get('SUPABASE_AUTH_LOGIN_EMAIL'),
    password: dotenv.get('SUPABASE_AUTH_LOGIN_PASSWORD'),
  );

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
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 16),
              child: TabBarView(
                children: [
                  CalendarView(),
                  Center(child: Icon(Icons.redeem)),
                  Center(child: Icon(Icons.person_outline)),
                ],
              ),
            ),
          ),
        ));
  }
}

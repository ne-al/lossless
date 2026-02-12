import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lossless/app/components/btm_navbar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterDisplayMode.setHighRefreshRate();

  await Hive.initFlutter();
  await Hive.openBox('PREFERENCES');
  await Hive.openBox('HISTORY');

  runApp(ProviderScope(child: const LosslessMusicApp()));
}

class LosslessMusicApp extends StatelessWidget {
  const LosslessMusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lossless Music App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blueAccent, brightness: .dark),
      ),
      home: const PersistentBottomNavBar(),
    );
  }
}

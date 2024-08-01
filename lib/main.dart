import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:walking_scene/route.dart';
import 'package:walking_scene/test_key.dart';

void main() async {
  //read env file
  await dotenv.load(fileName: '.env');

  //init flutter naver map
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance.initialize(clientId: dotenv.env['NAVER_MAPS_CLIENT_ID']);

  runApp(const ProviderScope(child: WalkingScene()));
}

class WalkingScene extends ConsumerWidget {
  const WalkingScene({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: route,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      title: 'demo',
    );
  }
}

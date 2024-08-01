import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_scene/presentation/contents/contents_page.dart';
import 'package:walking_scene/presentation/home/home_page.dart';

enum AppRoute{
  home('/'),
  contents('/contents');

  final String path;

  const AppRoute(this.path);
}

final goRouterProvider = Provider<GoRouter>((ref){
  return GoRouter(initialLocation: AppRoute.home.path, routes: [
    GoRoute(path: AppRoute.home.path, builder: (context, state)=> HomePage()),
    GoRoute(path: AppRoute.contents.path, builder: (context, state)=>ContentsPage())
  ]);
});


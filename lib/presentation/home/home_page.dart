import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_scene/route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: ListView(
          children: [
            ElevatedButton(onPressed: (){
              context.push(AppRoute.contents.path);
            }, child: Text("contents_0"))
          ],
        ));
  }
}

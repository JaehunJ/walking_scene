import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class ContentsPage extends StatelessWidget {
  const ContentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("contents_page"),
        ),
        body: NaverMap(
          options: const NaverMapViewOptions(
              mapType: NMapType.navi
          ),
          onMapReady: (controller){
            print("ready map");
          },
        ));
  }
}

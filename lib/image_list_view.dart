import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class imageListView extends StatefulWidget {
  final int startindex;
  int currentindex = 0;
  List<String > imageurl = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBUQJvsNuZMoWJBXaBwTojK9FclM48f31RkA&usqp=CAU',
    'https://static.thehoneycombers.com/wp-content/uploads/sites/6/2021/04/Emma-Wallace-900x643.jpeg',
    'https://d2line.com/thatlook/wp-content/uploads/sites/4/2022/09/women-clothing-fashion-designerstyle-by-d2line.png',
  ];

  imageListView(this.startindex, {super.key});

  @override
  State<imageListView> createState() => _imageListViewState();
}

class _imageListViewState extends State<imageListView> {
  final _ScrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ScrollController.addListener(() {
      if (!_ScrollController.position.atEdge) {
        _autoscroll();
      }
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _autoscroll();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.60,
        height: MediaQuery.of(context).size.height * 0.60,
        child: ListView.builder(
          controller: _ScrollController,
          itemCount: 5,
          itemBuilder: (context, index) {
            return CachedNetworkImage(
              imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBUQJvsNuZMoWJBXaBwTojK9FclM48f31RkA&usqp=CAU',
              imageBuilder: (context, imageProvider) {
                return Container(
                  margin: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10),
                  height: MediaQuery.of(context).size.height * 0.40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  void _autoscroll() {
    final CurrentScrollposition = _ScrollController.offset;
    final ScrollEndposition = _ScrollController.position.maxScrollExtent;
    scheduleMicrotask(() {
      _ScrollController.animateTo(
          CurrentScrollposition == ScrollEndposition ? 0 : ScrollEndposition,
          duration: const Duration(seconds: 5),
          curve: Curves.linear);
    });
  }
}

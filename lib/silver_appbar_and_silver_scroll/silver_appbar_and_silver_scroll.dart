import 'package:flutter/material.dart';

class SliverAppBarAndSilverScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: Silver,
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Testing"),
            collapseMode: CollapseMode.pin,
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground
            ],
            background: Image.asset(
              "assets/images .jpg",
              fit: BoxFit.cover,
            ),
          ),
          expandedHeight: 150,
          floating: true,
          snap: true,
          pinned: true,
          title: Text("Testing"),
        ),
        SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            height: 150,
            child: Text("ABC"),
          );
        }, childCount: 10))
      ],
    ));
  }
}

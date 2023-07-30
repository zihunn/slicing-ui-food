import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_ui/core.dart';
import '../controller/detail_controller.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key}) : super(key: key);

  Widget build(context, DetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
        actions: const [],
      ),
      body: Container(
        height: 350,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
        child: Builder(builder: (context) {
          List images = [
            "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
            "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
            "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
            "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
            "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
          ];
          return CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1 / 1.4,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: images.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          );
        }),
      ),
    );
  }

  @override
  State<DetailView> createState() => DetailController();
}

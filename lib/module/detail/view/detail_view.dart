import 'package:flutter/material.dart';
import 'package:food_ui/core.dart';
import 'package:food_ui/state_util.dart';
import '../controller/detail_controller.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key}) : super(key: key);

  Widget build(context, DetailController controller) {
    controller.view = this;

    var args = ModalRoute.of(context)!.settings.arguments as Map;
    var item = args['item'];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 100.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffd7d7d7),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: const Icon(
                  color: Colors.black,
                  Icons.arrow_back_ios_outlined,
                  size: 20.0,
                ),
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.all(10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffd7d7d7),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: const Icon(
                  color: Colors.black,
                  Icons.shopping_bag_outlined,
                  size: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Colors.white,
              Color(0xfff8f8f8),
              Color(0xfffcfcfa),
            ],
          ),
        ),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 30),
                    width: 270,
                    height: 270,
                    decoration: BoxDecoration(),
                    child: Image.asset(
                      item['image'],
                      fit: BoxFit.scaleDown,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.9,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      40.0,
                    ),
                    topRight: Radius.circular(
                      40.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 180,
                          child: Text(
                            item['category'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: primary),
                              ),
                              const SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                "${item['price']}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 26),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '⭐ ${item['rating']}',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '🔥 ${item['calories']} Calories',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '⏰ ${item['time']}',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Details",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      item['detail'],
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.5),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Ingredients",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 15,
              child: Container(
                height: 90,
                padding: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: item['ingredient'].length,
                  itemBuilder: (BuildContext context, int index) {
                    var img = item['ingredient'][index];
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 70.0,
                      width: 80,
                      decoration: BoxDecoration(
                        color:
                            controller.colors[index % controller.colors.length],
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Image.asset(img),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              top: 245,
              left: 140,
              child: Container(
                height: 40.0,
                width: 104,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffffeec3),
                      blurRadius: 10,
                      offset: Offset(-5, 8),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        size: 18.0,
                      ),
                    ),
                    Text("1"),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove,
                        size: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<DetailView> createState() => DetailController();
}

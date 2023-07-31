import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:food_ui/core.dart';
import 'package:food_ui/state_util.dart';
import '../controller/Home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  State<HomeView> createState() => HomeController();
  Widget build(context, HomeController controller) {
    controller.view = this;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Container(
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
                Icons.notes_outlined,
                size: 24.0,
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.all(10),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffd7d7d7),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                  color: primary,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: const Icon(
                  color: Colors.black,
                  Icons.people_alt,
                  size: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
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
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Let's eat",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Quality food 😋",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Color(0xfff1f2f6),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  style: const TextStyle(
                                    color: Colors.black87,
                                  ),
                                  initialValue: null,
                                  decoration: const InputDecoration.collapsed(
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      hintText: "Search",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      )),
                                  onFieldSubmitted: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Container(
                            height: 50.0,
                            width: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14)),
                                primary: primary, // Background color
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.tune,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      controller: ScrollController(),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              controller.index2 = 0;
                              controller.categoryChange(0);
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/burger.png",
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Fast food",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: const EdgeInsets.only(
                                  left: 12, right: 14, top: 15, bottom: 15),
                              primary: controller.index2 == 0
                                  ? Colors.amber
                                  : Colors.white,
                              side: BorderSide(color: primary),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              controller.index2 = 1;
                              controller.categoryChange(1);
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/strawberry.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "Fruit item",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                padding: const EdgeInsets.only(
                                    left: 12, right: 14, top: 15, bottom: 15),
                                primary: controller.index2 == 1
                                    ? Colors.amber
                                    : Colors.white,
                                side: BorderSide(
                                  color: primary,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              controller.index2 = 2;
                              controller.categoryChange(2);
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/broccoli.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Dessert",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: const EdgeInsets.only(
                                  left: 12, right: 14, top: 15, bottom: 15),
                              primary: controller.index2 == 2
                                  ? Colors.amber
                                  : Colors.white,
                              side: BorderSide(
                                color: primary,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              height: 374,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(),
              child: Swiper(
                viewportFraction: 0.6,
                scale: 0.9,
                autoplay: true,
                itemCount: controller.ListFood.length,
                itemBuilder: (context, index) {
                  var item = controller.ListFood[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/detail_view",
                          arguments: {'item': item});
                    },
                    child: Stack(children: [
                      Positioned(
                        child: Container(
                          padding: EdgeInsets.only(bottom: 15),
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 50, bottom: 20),
                          height: 280,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                20.0,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                item['name'],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                item['category'],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "🔥 ${item['calories']} Calories",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "\$",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2.0,
                                  ),
                                  Text(
                                    "${item['price']}",
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -15,
                        left: 16,
                        child: Container(
                          height: 210,
                          width: 210,
                          decoration: BoxDecoration(
                              // color: Colors.amberAccent,
                              ),
                          child: Center(
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(item['image']),
                            ),
                          ),
                        ),
                      )
                    ]),
                  );
                },
              ),
            ),
            Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: CustomPaint(
                    size: Size(MediaQuery.of(context).size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                ),
                Center(
                  heightFactor: 0.6,
                  child: FloatingActionButton(
                      backgroundColor: primary,
                      child: Icon(Icons.shopping_basket),
                      elevation: 0.1,
                      onPressed: () {}),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.home,
                          color: controller.currentIndex == 0
                              ? primary
                              : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          controller.setBottomBarIndex(0);
                        },
                        splashColor: Colors.white,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.restaurant_menu,
                            color: controller.currentIndex == 1
                                ? primary
                                : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            controller.setBottomBarIndex(1);
                          }),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.20,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.bookmark,
                            color: controller.currentIndex == 2
                                ? primary
                                : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            controller.setBottomBarIndex(2);
                          }),
                      IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: controller.currentIndex == 3
                                ? primary
                                : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            controller.setBottomBarIndex(3);
                          }),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

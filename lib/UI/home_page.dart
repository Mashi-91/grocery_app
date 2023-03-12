import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Util/color_constant.dart';
import 'package:grocery_app/model/img_model.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.location_on_rounded,
                        color: Color(0xFFF8740F),
                      )),
                  const Text(
                    'Samad Vurgun Street 123b',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        EvaIcons.bellOutline,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22, top: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search products',
                  hintStyle: TextStyle(fontWeight: FontWeight.w400),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  prefixIcon: const Icon(
                    EvaIcons.searchOutline,
                    color: Color(0xFF818181),
                    size: 23,
                  ),
                  fillColor: Color(0xFFF5F5F5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(35)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            25.heightBox,
            VxSwiper(
              aspectRatio: 15 / 8,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              items: imageinfo.map((i) {
                return Stack(
                  children: [
                    Image.asset(
                      i.img,
                      fit: BoxFit.fill,
                    )
                        .box
                        .clip(Clip.antiAliasWithSaveLayer)
                        .rounded
                        .make(),
                    i.title!.text
                        .color(Colors.black)
                        .fontWeight(FontWeight.bold)
                    .size(40)
                        .make()
                        .box
                    .size(100, 70)
                    .margin(const EdgeInsets.symmetric(horizontal: 24, vertical: 15))
                        .color(Colors.transparent)
                        .make()
                  ],
                );
              }).toList(),
            ),
            40.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: "Categories".text.fontWeight(FontWeight.w600).size(20).make(),
            ),
            20.heightBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: CircularImages.map((index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(index.img),),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

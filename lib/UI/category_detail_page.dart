import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Util/color_constant.dart';
import '../model/img_model.dart';
import 'Home/widget.dart';

class CategoryDetailPage extends StatelessWidget {
  static const routename = '/categorydetailpages';

  @override
  Widget build(BuildContext context) {
    final Args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final title = Args['title'] as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22, top: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search products',
                hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                prefixIcon: const Icon(
                  EvaIcons.searchOutline,
                  color: Color(0xFF818181),
                  size: 23,
                ),
                fillColor: const Color(0xFFF5F5F5),
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.81,
            child: GridView.builder(
                itemCount: fruitsCategoriesImages.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                ),
                itemBuilder: (_, i) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:
                            Border.all(width: 1, color: Colors.grey.shade200),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                height: 135,
                                width: double.maxFinite,
                                child: Image.asset(
                                    fruitsCategoriesImages[i].img,
                                    fit: BoxFit.fitHeight),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.favorite_border_rounded,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              fruitsCategoriesImages[i].title!,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 9),
                                child: Text(
                                  NumberFormat.simpleCurrency()
                                      .format(fruitsCategoriesImages[i].price),
                                  style: const TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Text(
                                " / kg",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: Icon(Icons.add_circle_rounded,
                                    color: ColorConstant.tealA400),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

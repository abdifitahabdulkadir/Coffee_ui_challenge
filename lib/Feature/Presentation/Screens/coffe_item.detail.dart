import 'package:coffee_app/core/coffe_colors.dart';
import 'package:coffee_app/core/coffee_dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../Components/get_app_bar_design.dart';
import 'order_screen.dart';

class CoffeeItemDetail extends StatefulWidget {
  final CoffeModel model;
  final String tagId;
  const CoffeeItemDetail({super.key, required this.model, required this.tagId});

  @override
  State<CoffeeItemDetail> createState() => _CoffeeItemDetailState();
}

class _CoffeeItemDetailState extends State<CoffeeItemDetail>
    with SingleTickerProviderStateMixin {
  late AnimationController _imageAnimationController;
  late Animation<RelativeRect> _imageAnimation;

  @override
  void initState() {
    super.initState();
    _imageAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _imageAnimation = RelativeRectTween(
            begin: RelativeRect.fromLTRB(0, 0, 0, 0),
            end: RelativeRect.fromLTRB(20, 20, 20, 20))
        .animate(CurvedAnimation(
            parent: _imageAnimationController, curve: Curves.linearToEaseOut));
    _imageAnimationController.forward();
    _imageAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _imageAnimationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _imageAnimationController.forward();
      }
    });
  }

  @override
  void dispose() {
    _imageAnimationController.dispose();
    super.dispose();
  }

  final String _coffeeDescripton =
      "Coffee, with its rich and aromatic allure, is much more than a mere beverage; it's an experience that transcends cultures and continents. From the moment the beans are harvested to the final pour into your cup.";

  Widget _getButtonDesign({required String title}) {
    return Container(
      height: 50,
      width: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: title == "M"
            ? CoffeColors.secondaryColorOne.withOpacity(0.2)
            : CoffeColors.whiteColor,
        border: Border.all(
          color: title == "M" ? CoffeColors.secondaryColorOne : Colors.grey,
          width: 1,
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.firaCode().copyWith(
          fontSize: 30,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: GetAppbarDesign(
              leading: Icons.arrow_back_ios,
              title: "Detail",
              trainling: Icons.notifications,
            ),
          ),
          SliverToBoxAdapter(
            child: RepaintBoundary(
              child: SizedBox(
                height: 250,
                child: Stack(
                  children: [
                    PositionedTransition(
                      rect: _imageAnimation,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          clipBehavior: Clip.hardEdge,
                          child: AvifImage.asset(
                            fit: BoxFit.cover,
                            widget.model.imageUrl,
                            cacheHeight: 300,
                            cacheWidth: 300,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Text(
                widget.model.name,
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: CoffeeItemDescription(model: widget.model)),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 10,
                color: Colors.grey.shade400,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Description",
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 6),
              child: ReadMoreText(
                _coffeeDescripton,
                colorClickableText: CoffeColors.secondaryColorOne,
                trimLines: 4,
                trimMode: TrimMode.Line,
                trimExpandedText: "Show less",
                trimCollapsedText: "Read More",
                moreStyle: GoogleFonts.jetBrainsMono().copyWith(
                  fontSize: 20,
                  color: CoffeColors.secondaryColorOne,
                ),
                lessStyle: GoogleFonts.jetBrainsMono().copyWith(
                  fontSize: 20,
                  color: CoffeColors.secondaryColorOne,
                ),
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 17,
                  color: Colors.black,
                  height: 1.4,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Size",
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _getButtonDesign(title: "S"),
                  _getButtonDesign(title: "M"),
                  _getButtonDesign(title: "L"),
                ],
              ),
            ),
          )
        ]),
        bottomNavigationBar: CoffeeDetailItemBottomBar(
          model: widget.model,
        ));
  }
}

class CoffeeDetailItemBottomBar extends StatelessWidget {
  final CoffeModel model;
  const CoffeeDetailItemBottomBar({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(5, 5),
            blurRadius: 10,
            spreadRadius: 0.3,
          ),
        ],
        color: CoffeColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(19),
          topRight: Radius.circular(19),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Price",
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "\$${model.price}",
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 30,
                    color: CoffeColors.secondaryColorOne,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => OrderScreen(
                        model: model,
                      )));
            },
            child: Container(
              height: 80,
              width: 230,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: CoffeColors.secondaryColorOne.withOpacity(0.8),
              ),
              child: Text(
                "BUY NOW",
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CoffeeItemDescription extends StatelessWidget {
  final CoffeModel model;
  const CoffeeItemDescription({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(left: 10),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: AvifImage.asset(
              model.imageUrl,
              fit: BoxFit.cover,
              cacheWidth: 100,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.contains,
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.star,
                    color: CoffeColors.secondaryColorOne,
                    size: 30,
                  ),
                  SizedBox(width: 4),
                  Text(
                    model.rating.toStringAsFixed(1),
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "(230)",
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Image.asset(
                  "asset/grid_images/firstone.png",
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Image.asset(
                  "asset/grid_images/secondone.png",
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}

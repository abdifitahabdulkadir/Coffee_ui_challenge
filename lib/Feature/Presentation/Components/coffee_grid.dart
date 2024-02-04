import '/Feature/Presentation/Screens/coffe_item.detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_avif/flutter_avif.dart';
import '../../../core/coffe_colors.dart';
import '../../../core/coffee_dummy_data.dart';

class CoffeeGridView extends StatelessWidget {
  const CoffeeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(bottom: 10),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          mainAxisSpacing: 20,
          crossAxisSpacing: 5,
        ),
        itemCount: coffeeDummyData.length,
        itemBuilder: ((context, index) {
          final eachDummyItem = coffeeDummyData[index];
          String tagid =
              ((eachDummyItem.imageUrl.length + index) / coffeeDummyData.length)
                  .toString();

          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) =>
                      CoffeeItemDetail(model: eachDummyItem, tagId: tagid)));
            },
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: CoffeColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      offset: Offset(-1, -1),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * 0.6,
                      child: Stack(
                        children: [
                          Container(
                            height: constraints.maxHeight * 0.6,
                            width: double.maxFinite,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: AvifImage.asset(
                              eachDummyItem.imageUrl,
                              fit: BoxFit.cover,
                              cacheHeight:
                                  (constraints.maxHeight * 0.6).toInt(),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                  color:
                                      CoffeColors.appBarColor.withOpacity(0.4),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  )),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: CoffeColors.secondaryColorOne,
                                    size: 30,
                                  ),
                                  Text(
                                    eachDummyItem.rating.toStringAsFixed(2),
                                    style: GoogleFonts.jetBrainsMono().copyWith(
                                      fontSize: (constraints.maxWidth * 0.1),
                                      fontWeight: FontWeight.w800,
                                      color: CoffeColors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      child: Text(
                        eachDummyItem.name,
                        maxLines: 1,
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: constraints.maxWidth * 0.09,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 2),
                      child: Text(
                        eachDummyItem.contains,
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: constraints.maxWidth * 0.09,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ ${eachDummyItem.price.toString()}",
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: constraints.maxWidth * 0.09,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Flexible(
                            child: SizedBox(
                              height: constraints.minHeight * 0.12,
                              width: constraints.minHeight * 0.12,
                              child: FloatingActionButton(
                                backgroundColor: CoffeColors.secondaryColorOne
                                    .withOpacity(0.9),
                                onPressed: () {},
                                heroTag: "grid_floating_button${index}",
                                child: Icon(
                                  Icons.add,
                                  color: CoffeColors.whiteColor,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}

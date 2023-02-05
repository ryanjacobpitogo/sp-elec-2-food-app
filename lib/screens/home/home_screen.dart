import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/demoData.dart';

import 'components/image_carousel.dart';
import 'components/restaurant_info_medium_card.dart';
import 'components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            floating: true,
            title: Column(
              children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kActiveColor),
                ),
              ),
              const Text(
                "San Francisco",
                style: TextStyle(color: Colors.black),
              ),
            ]),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Filter",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Partners",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      demoMediumCardData.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(left: defaultPadding),
                            child: RestaurantInfoMediumCard(
                              title: demoMediumCardData[index]['name'],
                              location: demoMediumCardData[index]['location'],
                              image: demoMediumCardData[index]['image'],
                              rating: demoMediumCardData[index]['rating'],
                              deliveryTime: demoMediumCardData[index]
                                  ['delivertTime'],
                              press: () {},
                            ),
                          )
                      )
                  ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(child: Image.asset("assets/images/Banner.png")),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Partners",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      demoMediumCardData.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(left: defaultPadding),
                            child: RestaurantInfoMediumCard(
                              title: demoMediumCardData[index]['name'],
                              location: demoMediumCardData[index]['location'],
                              image: demoMediumCardData[index]['image'],
                              rating: demoMediumCardData[index]['rating'],
                              deliveryTime: demoMediumCardData[index]
                                  ['delivertTime'],
                              press: () {},
                            ),
                          )
                      )
                  ),
            ),
          ),
        ],
      )
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'PersonCard.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return PersonCard(
              imageUrl: 'assets/peopleImages/$i.jpg',
              isLogin: i <= 2 ? true : false,
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlay: false,
          viewportFraction: 0.6,
          height: 300),
    );
  }
}

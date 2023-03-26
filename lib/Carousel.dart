import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/services/apis.dart';

import 'PersonCard.dart';
import 'models/userModel.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});

  Future<List<UserModel>> users = ApiServices().getUsers();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (cnt, snapShot) {
        if (snapShot.hasData) {
          return CarouselSlider(
            items: snapShot.data?.map((user) {
              return Builder(
                builder: (BuildContext context) {
                  return PersonCard(
                    imageUrl: user.image,
                    isLogin: user.id <= 2 ? true : false,
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
        return const Text("Loading");
      },
      future: users,
    );
  }
}

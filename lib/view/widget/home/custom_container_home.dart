import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomContainerHome extends StatefulWidget {
  const CustomContainerHome({super.key});

  @override
  State<CustomContainerHome> createState() => _CustomContainerHomeState();
}

class _CustomContainerHomeState extends State<CustomContainerHome> {
  int selected = 0;

  int activeIndex = 0;
  final urlImages = [
    'assets/images/ads1.png',
    'assets/images/ads2.png',
    'assets/images/ads3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: urlImages.length,
          options: CarouselOptions(
            height: 180,
            viewportFraction: 1,
            reverse: true,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];
            return buildImage(urlImage, index);
          },
        ),
        const SizedBox(height: 20),
        buildIndicator()
      ],
    );
  }

  Widget buildImage(urlImage, int index) => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage("$urlImage"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: const WormEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: AppColor.red,
          dotColor: Colors.black12,
        ),
      );
}

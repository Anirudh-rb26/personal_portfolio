import 'package:anirudhs_portfolio/models/experience_model.dart';
import 'package:anirudhs_portfolio/utils/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  final controller = CarouselController();
  int activeIndex = 0;
  double responsiveHeight = getCarouselHeight();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: defaultPadding / 2),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "My Experiences",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Center(
          child: CarouselSlider.builder(
            itemCount: myExperiences.length,
            carouselController: controller,
            options: CarouselOptions(
                height: responsiveHeight,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                viewportFraction: 1,
                enlargeCenterPage: true,
                // enableInfiniteScroll: false,
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                }),
            itemBuilder: (context, index, realIndex) {
              final experience = myExperiences[index];
              return buildCarouselCard(experience, index);
            },
          ),
        ),
        const SizedBox(height: 32),
        CarouselIndicator(activeIndex: activeIndex),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                controller.previousPage(
                  duration: const Duration(milliseconds: 400),
                );
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            IconButton(
              onPressed: () {
                controller.nextPage(
                  duration: const Duration(milliseconds: 400),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        )
      ],
    );
  }
}

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    super.key,
    required this.activeIndex,
  });

  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: myExperiences.length,
      effect: const SwapEffect(
        dotWidth: 10,
        dotHeight: 10,
        activeDotColor: primaryColor,
        dotColor: secondaryColor,
      ),
    );
  }
}

Widget buildCarouselCard(Experience experience, int index) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 12),
    // color: secondaryColor,
    child: Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(experience.title),
            const Divider(
              color: primaryColor,
            ),
            Text(experience.description),
            Text(
              experience.date,
              style: const TextStyle(color: primaryColor),
            ),
          ],
        ),
      ),
    ),
  );
}

double getCarouselHeight() {
  double height = 0;
  if (isMobile) {
    height = 520;
  } else {
    height = 250;
  }
  return height;
}

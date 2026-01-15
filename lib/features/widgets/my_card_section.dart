import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';
import 'package:responsive_dashborad/features/widgets/dot_indicator.dart';
import 'package:responsive_dashborad/features/widgets/my_cards_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            "My Card",
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(height: 20),
        MyCards_view(pageController: pageController),
        const SizedBox(height: 20),
        DotIndicator(currentIndex: currentIndex),
        const SizedBox(height: 24),
      ],
    );
  }
}

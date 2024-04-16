import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:template/providers/onboarding/onboarding_provider.dart';
import 'package:template/setup/environment/env.dart';
import 'package:template/setup/widgets/button_widget.dart';
import 'package:template/setup/widgets/label_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<OnboardingProvider>(context);
    final slides = provider.slides;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            slides[currentIndex].getImage(),
          ),
          fit: BoxFit.cover,
        )),
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: slides.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          LabelWidget.lg(
                            text: slides[index].getTitle(),
                            textColor: ENV.whiteTextColor,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(height: 10),
                          LabelWidget.sm(
                            text: slides[index].getDescription(),
                            textColor: ENV.whiteTextColor,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    SmoothPageIndicator(
                      controller: _controller,
                      count: slides.length,
                      effect: WormEffect(
                        dotHeight: 7,
                        dotWidth: 7,
                        activeDotColor: ENV.primaryBgColor,
                        type: WormType.thinUnderground,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ButtonWidget(
                      onTap: () async {
                        if (currentIndex == slides.length - 1) {
                          context.go('/login');
                        }
                        if (currentIndex == 1) {
                          print('page2');
                        }
                        if (currentIndex == 2) {
                          print('page2');
                        }
                        await _controller.nextPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeInOut,
                        );
                      },
                      text: slides[currentIndex].getButtonName(),
                      color: ENV.primaryButtonColor,
                      textColor: ENV.whiteTextColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      backgroundColor: ENV.primaryBgColor,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/splash_model.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial13 extends StatefulWidget {
  const FlutterStartTutorial13({super.key});

  @override
  FlutterStartTutorial13State createState() => FlutterStartTutorial13State();
}

class FlutterStartTutorial13State extends State<FlutterStartTutorial13> {
  final PageController pageViewController = PageController(initialPage: 0);
  int currentPageIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  void onIndicatorPressed(int indicatorIndexPressed) {
    pageViewController.animateToPage(
      indicatorIndexPressed,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView e Indicatori'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            sectionTitle("PageView"),
            const SizedBox(height: 10),
            explanationText(
              "PageView è un widget che permette di scorrere tra diverse pagine. "
              "La direzione dello scroll può essere modificata tra orizzontale e verticale "
              "utilizzando la proprietà `scrollDirection`.",
            ),
            const SizedBox(height: 20),
            sectionTitle("Esempio di PageView con Indicatori"),
            const SizedBox(height: 10),
            propertyExample(
              "PageView",
              SizedBox(
                height: 500,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: pageViewController,
                      onPageChanged: onPageChanged,
                      scrollDirection:
                          Axis.horizontal, // Cambia qui per verticale
                      itemCount: splashPages.length,
                      itemBuilder: (context, index) =>
                          SplashScreen(splashPages[index]),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: SafeArea(
                        child: PageViewIndicators(
                          pageViewIndex: currentPageIndex,
                          onIndicatorPressed: onIndicatorPressed,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            propertyExample(
              "Codice PageView:",
              const Text('''
PageView.builder(
  controller: pageViewController,
  onPageChanged: onPageChanged,
  scrollDirection: Axis.horizontal, // Cambia a Axis.vertical per scorrere verticalmente
  itemCount: splashPages.length,
  itemBuilder: (context, index) => SplashScreen(splashPages[index]),
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Indicatori di PageView"),
            const SizedBox(height: 10),
            explanationText(
              "Gli indicatori di PageView mostrano la pagina corrente. "
              "Permettono la navigazione tra le pagine tramite tocco diretto sugli indicatori.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Indicatori di PageView",
              PageViewIndicators(
                pageViewIndex: currentPageIndex,
                onIndicatorPressed: onIndicatorPressed,
              ),
            ),
            propertyExample(
              "Codice Indicatori:",
              const Text('''
Positioned(
  bottom: 10,
  left: 0,
  right: 0,
  child: SafeArea(
    child: PageViewIndicators(
      pageViewIndex: currentPageIndex,
      onIndicatorPressed: onIndicatorPressed,
    ),
  ),
),'''),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  final SplashPageModel splashPageModel;
  const SplashScreen(this.splashPageModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: splashPageModel.backgroundColor),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              splashPageModel.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              splashPageModel.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class PageViewIndicators extends StatelessWidget {
  final int pageViewIndex;
  final void Function(int index) onIndicatorPressed;

  const PageViewIndicators({
    super.key,
    required this.pageViewIndex,
    required this.onIndicatorPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        splashPages.length,
        (index) => GestureDetector(
          onTap: () => onIndicatorPressed(index),
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: index == pageViewIndex ? Colors.white : Colors.white54,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}

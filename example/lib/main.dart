import 'package:flutter/material.dart';
import 'package:flutter_page_tranzitionz/flutter_page_tranzitionz.dart';

/// To run the example app, clone/fork the repo!

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Page Tranzitionz',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Page Tranzitionz'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: _transitions.length,
            itemBuilder: (BuildContext context2, int index) {
              final Info info = _transitions[index];
              return ElevatedButton(
                onPressed: () => Navigator.push(
                  context2,
                  info.route.call(context),
                ),
                child: Text(info.label),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: Colors.primaries.length,
          itemBuilder: (BuildContext context, int index) {
            final Color color = Colors.primaries[index];
            return GridTile(
              child: Container(
                color: color,
                child: Text(color.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Info {
  final String label;
  final PageRouteBuilder<dynamic> Function(BuildContext) route;

  Info(this.label, this.route);
}

List<Info> _transitions = <Info>[
  Info(
    'Bottom to Top Fade',
    (_) => BottomToTopFadeTranzition(child: const Page2()),
  ),
  Info(
    'Bottom to Top Join',
    (BuildContext context) => BottomToTopJoinTranzition(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Bottom to Top Pop',
    (BuildContext context) => BottomToTopPopTranzition(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Bottom to Top',
    (_) => BottomToTopTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Fade',
    (_) => FadeTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Left to Right Fade',
    (_) => LeftToRightFadeTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Left to Right Join',
    (BuildContext context) => LeftToRightJoinTranzition(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Left To Right Pop',
    (BuildContext context) => LeftToRightPopTranzition(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Left to Right',
    (_) => LeftToRightTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Right to Left Fade',
    (_) => RightToLeftFadeTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Right to Left Join',
    (BuildContext context) => RightToLeftJoinTranzition(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Right to Left Pop',
    (BuildContext context) => RightToLeftPopTranzition(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Right to Left',
    (_) => RightToLeftTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Rotate',
    (_) => RotateTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Scale',
    (_) => ScaleTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Scale (top center)',
    (_) => ScaleTranzition(
      child: const Page2(),
      alignment: Alignment.topCenter,
    ),
  ),
  Info(
    'Scale (top left)',
    (_) => ScaleTranzition(
      child: const Page2(),
      alignment: Alignment.topLeft,
    ),
  ),
  Info(
    'Scale (top right)',
    (_) => ScaleTranzition(
      child: const Page2(),
      alignment: Alignment.topRight,
    ),
  ),
  Info(
    'Scale (bottom center)',
    (_) => ScaleTranzition(
      child: const Page2(),
      alignment: Alignment.bottomCenter,
    ),
  ),
  Info(
    'Scale (bottom left)',
    (_) => ScaleTranzition(
      child: const Page2(),
      alignment: Alignment.bottomLeft,
    ),
  ),
  Info(
    'Scale (bottom right)',
    (_) => ScaleTranzition(
      child: const Page2(),
      alignment: Alignment.bottomRight,
    ),
  ),
  Info(
    'Size',
    (_) => SizeTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Top To Bottom Fade',
    (_) => TopToBottomFadeTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Top To Bottom Join',
    (BuildContext context) => TopToBottomJoinTranzition(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Top To Bottom Pop',
    (BuildContext context) => TopToBottomPopTranzition(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Top To Bottom',
    (_) => TopToBottomTranzition(
      child: const Page2(),
    ),
  ),
];

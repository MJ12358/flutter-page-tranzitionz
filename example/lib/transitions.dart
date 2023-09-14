import 'package:flutter/widgets.dart';
import 'package:flutter_page_tranzitionz/flutter_page_tranzitionz.dart';
import 'package:flutter_page_tranzitionz_example/main.dart';

class Info {
  final String label;
  final PageRouteBuilder<dynamic> Function(BuildContext) route;

  Info(this.label, this.route);
}

List<Info> kTransitions = <Info>[
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

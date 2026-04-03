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
    'Fade',
    (_) => FadeTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Fade (bottom to top)',
    (_) => FadeTranzition.bottomToTop(
      child: const Page2(),
    ),
  ),
  Info(
    'Fade (left to right)',
    (_) => FadeTranzition.leftToRight(
      child: const Page2(),
    ),
  ),
  Info(
    'Fade (right to left)',
    (_) => FadeTranzition.rightToLeft(
      child: const Page2(),
    ),
  ),
  Info(
    'Fade (top to bottom)',
    (_) => FadeTranzition.topToBottom(
      child: const Page2(),
    ),
  ),
  Info(
    'Join (bottom to top)',
    (BuildContext context) => JoinTranzition.bottomToTop(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Join (left to right)',
    (BuildContext context) => JoinTranzition.leftToRight(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Join (right to left)',
    (BuildContext context) => JoinTranzition.rightToLeft(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Join (top to bottom)',
    (BuildContext context) => JoinTranzition.topToBottom(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Pop (bottom to top)',
    (BuildContext context) => PopTranzition.bottomToTop(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Pop (left to right)',
    (BuildContext context) => PopTranzition.leftToRight(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Pop (right to left)',
    (BuildContext context) => PopTranzition.rightToLeft(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Pop (top to bottom)',
    (BuildContext context) => PopTranzition.topToBottom(
      child: const Page2(),
      currentChild: context.widget,
    ),
  ),
  Info(
    'Rotate',
    (_) => RotateTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Rotate (top center)',
    (_) => RotateTranzition.topCenter(
      child: const Page2(),
    ),
  ),
  Info(
    'Rotate (top left)',
    (_) => RotateTranzition.topLeft(
      child: const Page2(),
    ),
  ),
  Info(
    'Rotate (top right)',
    (_) => RotateTranzition.topRight(
      child: const Page2(),
    ),
  ),
  Info(
    'Rotate (bottom center)',
    (_) => RotateTranzition.bottomCenter(
      child: const Page2(),
    ),
  ),
  Info(
    'Rotate (bottom left)',
    (_) => RotateTranzition.bottomLeft(
      child: const Page2(),
    ),
  ),
  Info(
    'Rotate (bottom right)',
    (_) => RotateTranzition.bottomRight(
      child: const Page2(),
    ),
  ),
  Info(
    'Rotate (center left)',
    (_) => RotateTranzition.centerLeft(
      child: const Page2(),
    ),
  ),
  Info(
    'Rotate (center right)',
    (_) => RotateTranzition.centerRight(
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
    (_) => ScaleTranzition.topCenter(
      child: const Page2(),
    ),
  ),
  Info(
    'Scale (top left)',
    (_) => ScaleTranzition.topLeft(
      child: const Page2(),
    ),
  ),
  Info(
    'Scale (top right)',
    (_) => ScaleTranzition.topRight(
      child: const Page2(),
    ),
  ),
  Info(
    'Scale (bottom center)',
    (_) => ScaleTranzition.bottomCenter(
      child: const Page2(),
    ),
  ),
  Info(
    'Scale (bottom left)',
    (_) => ScaleTranzition.bottomLeft(
      child: const Page2(),
    ),
  ),
  Info(
    'Scale (bottom right)',
    (_) => ScaleTranzition.bottomRight(
      child: const Page2(),
    ),
  ),
  Info(
    'Scale (center left)',
    (_) => ScaleTranzition.centerLeft(
      child: const Page2(),
    ),
  ),
  Info(
    'Scale (center right)',
    (_) => ScaleTranzition.centerRight(
      child: const Page2(),
    ),
  ),
  Info(
    'Size',
    (_) => SizeTranzition(
      child: const Page2(),
    ),
  ),
  Info(
    'Size (top)',
    (_) => SizeTranzition.top(
      child: const Page2(),
    ),
  ),
  Info(
    'Size (bottom)',
    (_) => SizeTranzition.bottom(
      child: const Page2(),
    ),
  ),
  Info(
    'Slide (bottom to top)',
    (_) => SlideTranzition.bottomToTop(
      child: const Page2(),
    ),
  ),
  Info(
    'Slide (left to right)',
    (_) => SlideTranzition.leftToRight(
      child: const Page2(),
    ),
  ),
  Info(
    'Slide (right to left)',
    (_) => SlideTranzition.rightToLeft(
      child: const Page2(),
    ),
  ),
  Info(
    'Slide (top to bottom)',
    (_) => SlideTranzition.topToBottom(
      child: const Page2(),
    ),
  ),
];

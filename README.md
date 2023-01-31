# Flutter Page Tranzitionz

A set of [Page Route Transitions](https://docs.flutter.dev/cookbook/animation/page-route-animation) for simple and easy animations between different screens. Inspired by other packages on pub.dev.

## Getting started

Add this to your `pubspec.yaml` under `dependencies`

```yaml
flutter_page_tranzitionz: ^1.0.1-dev
```

## Usage

```dart
import 'package:flutter_page_tranzitionz/flutter_page_tranzitionz.dart';

Navigator.of(context).push(BottomToTopFadeTranzition(child: MyNextPage()));
```

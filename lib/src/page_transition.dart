import 'package:flutter/widgets.dart';

abstract class PageTranzition extends PageRouteBuilder {
  PageTranzition({
    required this.child,
  }) : super(pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return child;
        });

  final Widget child;
}

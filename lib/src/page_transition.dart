import 'package:flutter/widgets.dart';

class PageTransition<T> extends PageRouteBuilder<T> {
  PageTransition({
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

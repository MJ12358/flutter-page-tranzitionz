part of '../flutter_page_tranzitionz.dart';

abstract class PageTranzition extends PageRouteBuilder<dynamic> {
  PageTranzition({
    required this.child,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return child;
          },
        );

  final Widget child;
}

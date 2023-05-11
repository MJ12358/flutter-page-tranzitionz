part of flutter_page_tranzitionz;

abstract class PageTranzition<T> extends PageRouteBuilder<T> {
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

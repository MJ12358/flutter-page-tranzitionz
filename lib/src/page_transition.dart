part of flutter_page_tranzitionz;

abstract class PageTranzition<T> extends PageRouteBuilder<T> {
  PageTranzition({
    required this.child,
  }) : super(
          pageBuilder: (_, __, ___) {
            return child;
          },
        );

  final Widget child;
}

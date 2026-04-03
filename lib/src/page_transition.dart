part of flutter_page_tranzitionz;

/// A base class for page transitions.
abstract class PageTranzition<T> extends PageRouteBuilder<T> {
  PageTranzition({
    required this.child,
  }) : super(
          pageBuilder: (_, __, ___) {
            return child;
          },
        );

  /// The new page.
  final Widget child;
}

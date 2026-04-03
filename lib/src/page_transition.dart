part of flutter_page_tranzitionz;

/// {@template flutter_page_tranzitionz.PageTranzition}
/// A base class for page transitions.
/// {@endtemplate}
abstract class PageTranzition<T> extends PageRouteBuilder<T> {
  /// {@macro flutter_page_tranzitionz.PageTranzition}
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

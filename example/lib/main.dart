import 'package:flutter/material.dart';
import 'package:flutter_page_tranzitionz_example/time_dilation.dart';
import 'package:flutter_page_tranzitionz_example/transitions.dart';

/// To run the example app, clone/fork the repo!

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  static const String _title = 'Flutter Page Tranzitionz';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          actions: const <Widget>[
            TimeDilationButton(),
          ],
          title: const Text(_title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: kTransitions.length,
            itemBuilder: (BuildContext context2, int index) {
              final Info info = kTransitions[index];
              return ElevatedButton(
                onPressed: () => Navigator.push(
                  context2,
                  info.route.call(context),
                ),
                child: Text(info.label),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
    this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: Colors.primaries.length,
          itemBuilder: (BuildContext context, int index) {
            final Color color = Colors.primaries[index];
            return GridTile(
              child: Container(
                color: color,
                child: Text(color.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}

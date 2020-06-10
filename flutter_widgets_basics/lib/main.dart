import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  bool _first = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body:
        GestureDetector(
          onTap: () {
            setState(() {
              _first = !_first;
            });
          },
          child: Center(
              child: AnimatedCrossFade(
                duration: const Duration(seconds: 3),
                firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
                secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
                crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              )
          ),
        )
    );
  }
}

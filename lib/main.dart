import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nativeshell/nativeshell.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTextStyle(
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
        child: Container(
          color: Colors.black,
          child: WindowWidget(builder: (initData) {
            WindowBuilder? builder;
            builder ??= MainWindow();
            return builder;
          }),
        ),
      ),
    );
  }
}

class MainWindow extends WindowBuilder {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(child: Text("Welcome to NativeShell!")),
    );
  }

  @override
  Future<void> initializeWindow(LocalWindow window, Size intrinsicContentSize) {
    window.setGeometry(Geometry(
      minContentSize: intrinsicContentSize,
    ));
    return super.initializeWindow(window, intrinsicContentSize);
  }
}

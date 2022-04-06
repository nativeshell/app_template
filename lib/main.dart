import 'package:flutter/material.dart';
import 'package:nativeshell/nativeshell.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: WindowWidget(
        onCreateState: (initData) {
          WindowState? state;
          state ??= MainWindowState();
          return state;
        },
      ),
    );
  }
}

class MainWindowState extends WindowState {
  @override
  WindowSizingMode get windowSizingMode =>
      WindowSizingMode.atLeastIntrinsicSize;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WindowLayoutProbe(
        child: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const Center(
              child: Text('Welcome to NativeShell!'),
            ),
          ),
        ),
      ),
    );
  }
}

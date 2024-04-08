import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => ScreenOne());
          case '/second':
            return MaterialPageRoute(builder: (context) => ScreenTwo());
        }
      },
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Next"),
            onPressed: () {
              Navigator.pushNamed(context, '/second',
                  arguments: "practice navigation");
            }),
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final text = arguments != null ? arguments as String : '';

    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Back"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}

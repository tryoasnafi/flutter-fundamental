import 'package:first_flutter_app/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => ColorBloc(),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLoC dengan flutter_bloc"),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (_, currentColor) {
            return AnimatedContainer(
              color: currentColor,
              duration: Duration(milliseconds: 300),
              height: 100,
              width: 100,
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<ColorBloc>().add(ColorEvent.to_amber),
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () => context.read<ColorBloc>().add(ColorEvent.to_blue),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

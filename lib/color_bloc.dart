import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent {
  to_amber,
  to_blue,
}

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  ColorBloc({Color initialState = Colors.amber}) : super(initialState);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.blue;
    yield _color;
  }
}

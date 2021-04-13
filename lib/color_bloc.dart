import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent {
  to_amber,
  to_blue,
}

class ColorBloc {
  Color _color = Colors.amber;

  StreamController<ColorEvent> _eventController = StreamController();
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  StreamController<Color> _stateController = StreamController();
  StreamSink<Color> get _stateSink => _stateController.sink;
  Stream<Color> get stateStream => _stateController.stream;

  void _mapEventToState(ColorEvent colorEvent) {
    (colorEvent == ColorEvent.to_amber)
        ? _color = Colors.amber
        : _color = Colors.blue;
    _stateSink.add(_color);
  }

  ColorBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}

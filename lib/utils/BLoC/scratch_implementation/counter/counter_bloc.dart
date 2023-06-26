import 'dart:async';

import 'package:bloc_implementation/utils/BLoC/scratch_implementation/counter/counter_event.dart';

class CounterSBloc {
  int _counter = 0;

  final _counterStateController = StreamController<int>();

  StreamSink<int> get _counterSink => _counterStateController.sink;

  Stream<int> get counter => _counterStateController.stream;

  final _counterEventController = StreamController<CounterEvent>();

  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;

  CounterSBloc() {
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent counterEvent) {
    if (counterEvent is IncrementCounter) {
      _counter++;
    } else {
      _counter--;
    }
    _counterSink.add(_counter);
  }

  void disposeBlocControllers() {
    _counterEventController.close();
    _counterStateController.close();
  }
}

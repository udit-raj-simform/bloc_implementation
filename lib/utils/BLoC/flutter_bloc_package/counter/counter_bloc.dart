import 'dart:async';

import 'package:bloc_implementation/utils/BLoC/flutter_bloc_package/counter/counter_event.dart';
import 'package:bloc_implementation/utils/BLoC/flutter_bloc_package/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitState(0)) {
    on<IncrementCounterEvent>(_incrementCounter);
    on<DecrementCounterEvent>(_decrementCounter);
  }

  FutureOr<void> _incrementCounter(
      IncrementCounterEvent event, Emitter<CounterState> emit) {
    emit(CounterIncrementState(state.counter + 1));
  }

  FutureOr<void> _decrementCounter(
      DecrementCounterEvent event, Emitter<CounterState> emit) {
    emit(CounterIncrementState(state.counter - 1));
  }
}

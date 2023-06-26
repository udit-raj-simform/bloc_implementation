abstract class CounterState {
  int counter;

  CounterState(this.counter);
}

class CounterInitState extends CounterState {
  CounterInitState(super.counter);
}

class CounterIncrementState extends CounterState {
  CounterIncrementState(super.counter);
}

class CounterDecrementState extends CounterState {
  CounterDecrementState(super.counter);
}

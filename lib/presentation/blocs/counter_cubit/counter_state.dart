part of 'counter_cubit.dart';

class CounterState {
  final int counter;
  final int transactionCounter;

  CounterState({this.counter = 0, this.transactionCounter = 0});

  copyWith({int counter = 0, int transactionCounter = 0}) =>
      CounterState(counter: counter, transactionCounter: transactionCounter);
}

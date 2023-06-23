part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counter;
  final int transactionCounter;

  const CounterState({this.counter = 0, this.transactionCounter = 0});

  copyWith({int counter = 0, int transactionCounter = 0}) =>
      CounterState(counter: counter, transactionCounter: transactionCounter);

  @override
  List<Object> get props => [counter, transactionCounter];
}

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit()
      : super(
          CounterState(count: 0),
        );

  void increment() => emit(
        CounterState(count: state.count + 1),
      );

  void decrement() => emit(
        CounterState(count: state.count - 1),
      );
}

class CounterState {
  final int count;

  CounterState({
    required this.count,
  });
}

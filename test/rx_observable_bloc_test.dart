import 'package:flutter_test/flutter_test.dart';
import 'package:rx_observable_bloc/rx_observable_bloc.dart';

void main() {
  test('Observable Tests', () {
    final Observable<int> int$ = Observable();
    int$.addValue(1);
    expect(int$.value, equals(1));
  });
}

import 'package:rxdart/rxdart.dart';

class Observable<T> {
  Observable() {
    _controller = BehaviorSubject(); // Behavior, Replay, Publish
  }

  Observable.seeded(T seed) {
    _controller = BehaviorSubject.seeded(seed);
  }

  late final BehaviorSubject<T> _controller;

  ValueStream<T> get stream => _controller.stream;

  T? get value =>
      _controller.valueOrNull; // synchronous access to last emitted value

  void addValue(T value) {
    _controller.add(value);
  }

  void addError(Object error, [StackTrace? stackTrace]) {
    _controller.addError(error, stackTrace);
  }

  void complete() {
    _controller.close();
  }

  void dispose() {
    _controller.close();
  }
}

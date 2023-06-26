import 'package:bloc_implementation/values/app_globals/app_exports.dart';

@immutable
abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

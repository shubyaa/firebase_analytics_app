import 'package:async_redux/async_redux.dart';
import 'package:firebase_analytics_app/async_redux/app_state.dart';

class IncrementAction extends ReduxAction<AppState> {
  final int number;

  IncrementAction({required this.number});

  @override
  AppState reduce() {
    return state.copy(number: state.number + number);
  }
}

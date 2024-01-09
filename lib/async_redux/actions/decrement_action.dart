import 'package:async_redux/async_redux.dart';
import 'package:firebase_analytics_app/async_redux/app_state.dart';

class DecrementAction extends ReduxAction<AppState> {
  final int number;

  DecrementAction({required this.number});
  @override
  AppState reduce() {
    return state.copy(
        number: state.number <= 0 ? state.number : state.number - number);
  }
}

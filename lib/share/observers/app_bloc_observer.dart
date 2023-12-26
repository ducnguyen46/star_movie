import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_movie/share/utils/utils.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    LogUtil.d(
        '\n| on change |'
        '\n| current: ${change.currentState}'
        '\n| next: ${change.nextState}',
        name: '${bloc.runtimeType}');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    LogUtil.d('\n1- | on closed |', name: '${bloc.runtimeType}');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    LogUtil.d('\n| on create |', name: '${bloc.runtimeType}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    LogUtil.e(
      '\n| error |',
      error: error,
      stackTrace: stackTrace,
      name: '${bloc.runtimeType}',
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    LogUtil.d(
      '\n| on event |'
      '\n| $event |',
      name: '${bloc.runtimeType}',
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    LogUtil.d(
      '\n| current: ${transition.currentState}'
      '\n| next: ${transition.nextState}'
      '\n| event: ${transition.event}',
      name: '${bloc.runtimeType}',
    );
  }
}

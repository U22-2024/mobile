import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef Aspect<State> = bool Function(State oldState, State newState);
typedef ListenState<State, Selected> = Selected Function(State state);

bool unAspect(dynamic oldState, dynamic newState) => false;

class StoreInjector<State, Action> extends StatelessWidget {
  const StoreInjector({super.key, required this.store, required this.child});

  final Widget child;

  final Store<State, Action> store;

  @override
  Widget build(BuildContext context) => StateModel<State>(
        store: store,
        child: Dispatcher<Action>(
          store.dispatch,
          child: child,
        ),
      );
}

class StateModel<State> extends InheritedModel<Aspect<dynamic>> {
  StateModel({super.key, required this.store, required super.child})
      : _oldState = store.state;

  final Store<State, dynamic> store;
  final State _oldState;

  static State of<State>(BuildContext context, {Aspect? aspect}) =>
      InheritedModel.inheritFrom<StateModel<State>>(context, aspect: aspect)!
          .store
          .state;

  static Select selectOf<State, Select>(
    BuildContext context, {
    Aspect? aspect,
    required ListenState<State, Select> select,
  }) =>
      select(
        InheritedModel.inheritFrom<StateModel<State>>(context,
                aspect: (oldState, newState) =>
                    select(oldState) != select(newState))!
            .store
            .state,
      );

  @override
  bool updateShouldNotify(covariant StateModel<State> oldWidget) =>
      store.state != oldWidget._oldState;

  @override
  bool updateShouldNotifyDependent(covariant StateModel<State> oldWidget,
          Set<Aspect<State>> dependencies) =>
      dependencies.any((aspect) => aspect(store.state, oldWidget._oldState));
}

class Dispatcher<Action> extends InheritedWidget {
  const Dispatcher(this.dispatch, {super.key, required super.child});

  static Dispatcher<Action>? of<Action>(BuildContext context) => context
      .getElementForInheritedWidgetOfExactType<Dispatcher<Action>>()
      ?.widget as Dispatcher<Action>?;

  final void Function(Action action) dispatch;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}

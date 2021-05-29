import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  Page1ClickedEvent,
  Page2ClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);
  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield Home();
        break;
      case NavigationEvents.Page1ClickedEvent:
        yield Page1();
        break;
      case NavigationEvents.Page2ClickedEvent:
        yield Page2();
        break;
    }
  }
}

class Home extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}

class Page1 extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Page1'),
      ),
    );
  }
}

class Page2 extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Page2'),
      ),
    );
  }
}

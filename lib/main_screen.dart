import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/side_bar.dart';

import 'bloc.navigation_bloc/navigation_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(Home()),
        child: Stack(
          children: [
            BlocBuilder<NavigationBloc, NavigationStates>(
                builder: (context, navigationStates) {
              return navigationStates as Widget;
            }),
            SideBar(),
          ],
        ),
      ),
    );
  }
}

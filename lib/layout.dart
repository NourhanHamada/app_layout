import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'layout/layout_cubit.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {

    LayoutCubit layoutCubit = BlocProvider.of<LayoutCubit>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text(layoutCubit.titles[layoutCubit.currentIndex]),
      ),
      body: layoutCubit.screens[layoutCubit.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: layoutCubit.bottomNavBarItems,
        currentIndex: layoutCubit.currentIndex,
        onTap: (index) {
          layoutCubit.changeIndex(index);
        },
      ),
    );
  }
}

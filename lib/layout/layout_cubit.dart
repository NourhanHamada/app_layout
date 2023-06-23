import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../screens/home_screen.dart';
import '../screens/setting_screen.dart';
import '../screens/user_screen.dart';
import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  var currentIndex = 0;

  List<String> titles = [
    'Home',
    'User',
    'Setting',
  ];

  // todo: call right screens.
  List<Widget> screens = const [
    HomeScreen(),
    UserScreen(),
    SettingScreen(),
  ];

  List<BottomNavigationBarItem> bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black45,),
      activeIcon:  Icon(Icons.home, color: Colors.deepOrange,),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person, color: Colors.black45,),
      activeIcon:  Icon(Icons.person, color: Colors.deepOrange,),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings, color: Colors.black45,),
      activeIcon:  Icon(Icons.settings, color: Colors.deepOrange,),
      label: '',
    ),
  ];

  void changeIndex(index) {
    currentIndex = index;
    emit(ChangeBottomNavBarState());
  }
}

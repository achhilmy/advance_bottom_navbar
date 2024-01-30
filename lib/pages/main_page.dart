import 'package:advance_navigation/logic/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:advance_navigation/logic/bottom_nav_cubit/bottom_nav_state.dart';
import 'package:advance_navigation/pages/account_page.dart';
import 'package:advance_navigation/pages/home_page.dart';
import 'package:advance_navigation/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation with cubit"),
      ),
      body: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          switch (state.index) {
            case 0:
              return const HomePage();
            case 1:
              return const AccountPage();
            case 2:
              return const SettingPage();
            default:
              return const HomePage();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<BottomNavCubit>().state.index,
        onTap: (value) {
          context.read<BottomNavCubit>().navigateTo(index: value);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.balance), label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}

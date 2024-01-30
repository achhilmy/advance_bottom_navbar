import 'package:advance_navigation/logic/bottom_nav_cubit/bottom_nav_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState(index: 0));

  void navigateTo({required int index}) {
    emit(BottomNavState(index: index));
  }
}

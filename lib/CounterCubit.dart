import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0);

  void addCounter(){
    int counter = state +1;
    emit(counter);
  }
  void subCounter(int amount){
    int counter = state - amount;
    emit(counter);
  }


}
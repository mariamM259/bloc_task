
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Cubits/state.dart';

class countercubit extends Cubit<counterState>{
  countercubit() : super (counterIncrementState());
// var
int counter=0;
// methods
void increment(){
  counter++;
  emit(counterIncrementState());
}
void decrement(){
    counter--;
    emit(counterDecrementState());
  }
}
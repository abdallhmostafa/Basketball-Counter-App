import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{


  CounterCubit() : super(CounterAState());
  int pointA=0;
  int pointB=0;


  void addPoint( String team, int x){
    if(team == "A"){
      pointA+=x;
      emit(CounterAState());
    }else{
      pointB+=x;
      emit(CounterBState());
    }
  }
/*  void addPointA(int x){
      pointA+=x;
      emit(CounterAState());
  }
  void addPointB(int x){
      pointB+=x;
      emit(CounterBState());

  }
*/
  void reset(){
      pointA=0;
      pointB=0;
      emit(ClearState());
  }

}
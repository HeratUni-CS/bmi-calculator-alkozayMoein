import 'dart:math';

class Calculatorbrain {
  Calculatorbrain({required this.height,required this.weight});

  final int height;
  final int weight;

  late double _res;

  String calculatebmi(){
    _res=weight/pow(height/100 ,2);
    return  _res.toStringAsFixed(1);
  }

  String getResult(){
    if(_res>=25){
      return 'Overweight';
    }else if(_res>18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }


  String getAdvice(){
    if(_res>=25){
      return 'You are higher than normal weight, try to shake your body more.';
    }else if(_res>18.5){
      return 'You are just normal , keep going like this.';
    }else{
      return 'Hey bro, you are underweight!! ,you should eat more.';
    }
  }
}
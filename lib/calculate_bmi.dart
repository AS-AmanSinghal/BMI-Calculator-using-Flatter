import 'dart:math';
class CalculatorBrain
{
  final int weight;
  final int height;

  CalculatorBrain({this.weight, this.height});

  double _bmi=0;
  String calculateBMI()
  {
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult()
  {
    if(_bmi>=25)
      {
        return "Overweight";
      }
    else if(_bmi>18.5)
      {
        return "Normal";
      }
    else
      {
        return "UnderWeight";
      }
  }
  String getInterpreter()
  {
    if(_bmi>=25)
    {
      return "Kam Hoja";
    }
    else if(_bmi>18.5)
    {
      return "Bhut Sahi";
    }
    else
    {
      return "Dudu Pile beta";
    }
  }
}
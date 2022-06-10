import 'dart:math' as math;

class ImcStore {
  double _weight = 0.0;
  double _height = 0.0;
  String _result = '';

  String get result => _result;

  void setWeight(String value) {
    _weight = double.tryParse(value) ?? 0;
  }

  void setHeight(String value) {
    _height = double.tryParse(value) ?? 0;
  }

  void calculateBMI() {
    if (_weight == 0 || _height == 0) {
      throw Exception('Sua altura e peso devem ser maior que zero!');
    }

    _result = (_weight / math.pow(_height, 2)).toStringAsFixed(2);
  }
}

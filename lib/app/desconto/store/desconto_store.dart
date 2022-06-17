double intToDouble(value) {
  if (value is String) {
    if (value.isEmpty) {
      throw Exception("O valor não pode ser vazio!");
    }

    throw Exception("O valor não pode ser uma string!");
  }

  return value.toDouble();
}

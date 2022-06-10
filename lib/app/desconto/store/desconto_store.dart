double calcularDesconto(double valorInicial, double desconto, bool isPercent) {
  if (desconto <= 0) {
    throw Exception("O desconto deve ser maior que zero!");
  }

  if (valorInicial <= 0) {
    throw Exception("O valor inicial deve ser maior que zero!");
  }

  if (isPercent) {
    return valorInicial - (valorInicial * desconto / 100);
  }

  return valorInicial - desconto;
}

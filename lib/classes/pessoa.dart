class Pessoa {
  String _nome = '';
  double _peso = 0;
  double _altura = 0;
  double _imc = 0;

  void setNome(String? nome) {
    try {
      if (nome == null || nome.isEmpty) throw Exception();
      _nome = nome;
    } on Exception {
      print('Nome vazio!');
    }
  }

  void setPeso(String? peso) {
    try {
      if (peso == null || peso.isEmpty) throw Exception();
      _peso = double.parse(peso);
    } on FormatException {
      print('Formato inválido!');
    } on Exception {
      print('Formato inválido!');
    }
  }

  void setAltura(String? altura) {
    try {
      if (altura == null || altura.isEmpty) throw Exception();
      _altura = double.parse(altura);
    } on FormatException {
      print('Formato inválido!');
    } on Exception {
      print('Formato inválido!');
    }
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  String calcularIMC() {
    _imc = _peso / (_altura * _altura);
    return _imc.toStringAsFixed(2);
  }

  void imprimeResultado() {
    if (_peso == 0 || _altura == 0 || _nome.isEmpty) {
      print('Dados incompletos!');
      return;
    }

    print('Nome: $_nome');

    if (_imc == 0) {
      print('IMC ainda não calculado!');
    } else {
      print('IMC: ${_imc.toStringAsFixed(2)}');

      if (_imc < 16) {
        print('Classificação: Magreza grave.');
      } else if (_imc < 17) {
        print('Classificação: Magreza moderada.');
      } else if (_imc < 18.5) {
        print('Classificação: Magreza leve.');
      } else if (_imc < 25) {
        print('Classificação: Saudável.');
      } else if (_imc < 30) {
        print('Classificação: Sobrepeso.');
      } else if (_imc < 35) {
        print('Classificação: Obesidade grau I.');
      } else if (_imc < 40) {
        print('Classificação: Obesidade grau II (severa).');
      } else {
        print('Classificação: Obesidade grau III (mórbida).');
      }
    }
  }
}

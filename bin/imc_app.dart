import 'dart:convert';
import 'dart:io';
import 'package:imc_app/classes/pessoa.dart';

void main(List<String> arguments) {
  Pessoa p = Pessoa();

  print('Digite seu nome:');
  p.setNome(stdin.readLineSync(encoding: utf8));

  print('Digite seu peso (kg):');
  p.setPeso(stdin.readLineSync(encoding: utf8));

  print('Digite sua altura (m):');
  p.setAltura(stdin.readLineSync(encoding: utf8));

  p.calcularIMC();

  p.imprimeResultado();
}

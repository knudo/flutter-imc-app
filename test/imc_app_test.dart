import 'package:imc_app/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    Pessoa p1 = Pessoa();
    p1.setNome('Teste');
    p1.setPeso('60');
    p1.setAltura('1.8');

    expect(p1.calcularIMC(), '18.52');
  });
}

import 'package:agendamento_concerto/Agendamento/agendar.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Agendamento', () {
    test('Deve lançar uma exceção se a data e hora estiverem no passado', () {
      final agendamento = Agendamento(
        clienteId: 'cliente1',
        tecnicoId: 'tecnico1',
        dataHorario: DateTime(2000, 1, 1, 10, 0),
        descricaoProblema: 'Problema com a máquina de lavar',
        eletrodomestico: 'Máquina de Lavar',
      );

      expect(
        () => agendamento.validarDataHorario(DateTime(2024, 1, 1, 10, 0)),
        throwsA(isA<Exception>()),
      );
    });
  });
}

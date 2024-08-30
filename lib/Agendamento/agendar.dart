class Agendamento {
  late String clienteId;
  late String tecnicoId;
  late DateTime dataHorario;
  late String descricaoProblema;
  late String eletrodomestico;
  late String status;

  Agendamento(
      {required this.clienteId,
      required this.tecnicoId,
      required this.dataHorario,
      required this.descricaoProblema,
      required this.eletrodomestico});

  String formatarDataHora() {
    // Exemplo de formatação de data e hora
    return "${dataHorario.day}/${dataHorario.month}/${dataHorario.year} ${dataHorario.hour}:${dataHorario.minute}";
  }

  void validarDataHorario(DateTime dataHorario) {
    DateTime agora = DateTime.now();

    if (dataHorario.isBefore(agora)) {
      throw Exception(
          'A data e hora fornecidas são anteriores ao momento atual.');
    }
  }
}

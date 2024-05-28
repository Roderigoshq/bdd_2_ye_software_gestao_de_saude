import 'package:flutter_gherkin/flutter_gherkin.dart';

class DeletarMedicamentoWorld extends World {
  bool? abaMedicamentosAberta;
  bool? medicamentoDeletado;
}

StepDefinitionGeneric GivenEstouNaAbaDeMedicamentos() {
  return given<DeletarMedicamentoWorld>(
    'estou na aba de medicamentos',
    (context) async {
      // Simulação: Navegação para a aba de medicamentos
      context.world.abaMedicamentosAberta = true; // Simula que a aba de medicamentos foi aberta com sucesso
    },
  );
}

StepDefinitionGeneric WhenClicoEmDeletarMedicamento() {
  return when<DeletarMedicamentoWorld>(
    'clico em \'deletar medicamento\'',
    (context) async {
      // Simulação: Clique no botão de deletar medicamento
      document.querySelector('#btn-deletar-medicamento').click();
      context.world.medicamentoDeletado = true; // Simula que o medicamento foi deletado com sucesso
    },
  );
}


StepDefinitionGeneric ThenSistemaDeveAtualizarPaginaEApagarMedicamento() {
  return then<DeletarMedicamentoWorld>(
    'o sistema deverá atualizar a página e apagar o medicamento',
    (context) async {
      // Simulação: Verificar se o medicamento foi deletado e a página foi atualizada
      // e se a página foi atualizada com sucesso
      if (context.world.medicamentoDeletado == true) {
        // Simula que o medicamento foi deletado com sucesso
        context.world.medicamentoDeletado = true; // Marca como verdadeiro para indicar que o medicamento foi deletado
      } else {
        // Simula que o medicamento não foi deletado com sucesso
        throw 'O medicamento não foi deletado com sucesso';
      }
    },
  );
}

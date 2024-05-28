import 'package:bdd/steps/alterar_senha.dart';
import 'package:bdd/steps/deletar_medicamento.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';

void main() {
  final config = FlutterTestConfiguration()
    ..features = [
      Feature('features/deletar_medicamento.feature'),
      Feature('features/editar_senha.feature'),
    ]
    ..stepDefinitions = [
      GivenEstouNaAbaDeMedicamentos(),
      WhenClicoEmDeletarMedicamento(),
      ThenSistemaDeveAtualizarPaginaEApagarMedicamento(),
      GivenEstouNaAbaDeEditarPerfil(),
      AndPreenchoCampoNovaSenha(),
      AndPreenchoCampoConfirmarNovaSenha(),
      AndConfirmoAlteracaoSenha(),
      ThenSistemaDeveSalvarAlteracoesComSucesso(),
    ]
    ..reporters = [ProgressReporter()]
    ..targetAppPath = 'test_driver/app.dart';

  return GherkinRunner().execute(config);
}

// ignore: non_constant_identifier_names
Feature(String s) {}

ProgressReporter() {}

class GherkinRunner {
  void execute(FlutterTestConfiguration config) {}
}

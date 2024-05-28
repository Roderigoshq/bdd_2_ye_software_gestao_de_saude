import 'package:flutter_gherkin/flutter_gherkin.dart';

class AlterarSenhaWorld extends World {
  bool? abaEditarPerfilAberta;
  String? novaSenha;
}

StepDefinitionGeneric GivenEstouNaAbaDeEditarPerfil() {
  return given<AlterarSenhaWorld>(
    'estou na aba de editar perfil',
    (context) async {
      context.world.abaEditarPerfilAberta = true;
    },
  );
}

StepDefinitionGeneric AndPreenchoCampoNovaSenha() {
  return and<String, AlterarSenhaWorld>(
    'preencho o campo {string} com uma nova senha',
    (novaSenha, context) async {
      context.world.novaSenha = novaSenha;
    },
  );
}

StepDefinitionGeneric AndPreenchoCampoConfirmarNovaSenha() {
  return and<String, AlterarSenhaWorld>(
    'preencho o campo {string} com a mesma nova senha',
    (confirmarNovaSenha, context) async {
      // Simulação: Verificação se a confirmação de nova senha é igual à nova senha
      final novaSenha = context.world.novaSenha;
      expect(novaSenha, confirmarNovaSenha);
    },
  );
}


class AlterarSenhaWorld extends World {
  bool? alteracaoSenhaConfirmada;
  bool? alteracoesSalvasComSucesso;
}

StepDefinitionGeneric AndConfirmoAlteracaoSenha() {
  return and<AlterarSenhaWorld>(
    'confirmo a alteração da senha',
    (context) async {
      // Simulação: Confirmação da alteração da senha
      context.world.alteracaoSenhaConfirmada = true;
    },
  );
}

StepDefinitionGeneric ThenSistemaDeveSalvarAlteracoesComSucesso() {
  return then<AlterarSenhaWorld>(
    'o sistema deve salvar as alterações com sucesso',
    (context) async {
      // Simulação: Verificar se as alterações foram salvas com sucesso
      context.world.alteracoesSalvasComSucesso = true;
    },
  );
}

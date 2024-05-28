Feature: Alterar senha do perfil com sucesso

  Scenario: Alterar senha do perfil com sucesso
    Given estou na aba de editar perfil
    And preencho o campo "Nova Senha" com uma nova senha
    And preencho o campo "Confirmar Senha" com a mesma nova senha
    And confirmo a alteração da senha
    Then o sistema deve salvar as alterações com sucesso

Feature: Deletar medicamento cadastrado anteriormente com sucesso

  Scenario: Deletar medicamento cadastrado anteriormente com sucesso
    Given estou na aba de medicamentos
    When clico em 'deletar medicamento'
    Then o sistema deverá atualizar a página e apagar o medicamento

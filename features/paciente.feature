Feature: Paciente
  As a paciente
  I want to remover, e visualizar seu cadastro
  So that eu nao tenho que fazer isso de forma manual ou presencial


  Scenario: remover paciente
    Given estou na pagina inicial do paciente
    And seleciono o paciente com CPF '12345678920', data de nascimento '29-08-2003' e endereco, Logradouro 'Rua A', Complemento 'Casa', CEP '12345-678', Bairro 'Centro', Cidade 'Sao Paulo'
    When clico em remover o paciente com CPF '12345678920'
    Then vejo uma mensagem que o paciente foi removido com sucesso


  Scenario: visualizar paciente
    Given estou na pagina inicial dos pacientes
    And seleciono o paciente com CPF '10203040506', para visualizar o restante de suas informacoes
    When clico em visualizar o paciente
    Then vejo todas as informacoes do paciente
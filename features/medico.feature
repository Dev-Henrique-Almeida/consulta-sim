Feature: Medico
  As a medico
  I want to cadastrar, e remover seu cadastro
  So that eu nao tenho que fazer isso de forma manual ou presencial


  Scenario: remover medico
    Given estou na pagina inicial do medico
    And seleciono o medico com CRM '123456'
    When clico em remover o medico com CRM '123456'
    Then vejo uma mensagem que o medico foi removido com sucesso

  Scenario: cadastrar medico
    Given estou na pagina de cadastro do medico
    And quero cadastrar um medico com nome 'Henrique', CRM '654321', CPF '12345678910', email 'henrique@gmail.com', data de nascimento '29-08-2003', e especialidade 'Cardiologia'
    When clico em cadastrar um novo medico
    Then vejo uma mensagem que o medico foi cadastrado com sucesso
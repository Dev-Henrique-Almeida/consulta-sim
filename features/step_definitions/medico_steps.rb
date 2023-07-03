# Remover medico

Given('estou na pagina inicial do medico') do
  visit medicos_path
end

Given('seleciono o medico com CRM {string}') do |crm|
  @medico = Medico.create(nome: "Nome do Medico", email: "medico123@gmail.com", especialidade: "Especialidade", crm: crm)
  @medico = Medico.find_by(crm: crm)
  raise "Medico com CRM #{crm} nao encontrado" if @medico.nil?
end

When('clico em remover o medico com CRM {string}') do |crm|
  @medico = Medico.find_by(crm: crm)
  raise "Medico com CRM #{crm} nao encontrado" if @medico.nil?
  visit medico_path(@medico)
  click_on 'Remover'
  @medico.destroy
end

Then('vejo uma mensagem que o medico foi removido com sucesso') do
  assert_text('Medico foi removido com sucesso.')
end






# Cadastrar medico

Given('estou na pagina de cadastro do medico') do
  visit new_medico_path
end

Given('quero cadastrar um medico com nome {string}, CRM {string}, CPF {string}, email {string}, data de nascimento {string}, e especialidade {string}') do |nome, crm, cpf, email, data_nascimento, especialidade|
  @medico_attributes = { nome: nome, crm: crm, cpf: cpf, email: email, data_nascimento: data_nascimento, especialidade: especialidade }
end

When('clico em cadastrar um novo medico') do
  visit new_medico_path
  fill_in 'Nome', with: @medico_attributes[:nome]
  fill_in 'Crm', with: @medico_attributes[:crm]
  fill_in 'Cpf', with: @medico_attributes[:cpf]
  fill_in 'Email', with: @medico_attributes[:email]
  fill_in 'Data nascimento', with: @medico_attributes[:data_nascimento]
  fill_in 'Especialidade', with: @medico_attributes[:especialidade]
  click_on 'Cadastrar'

end

Then('vejo uma mensagem que o medico foi cadastrado com sucesso') do
  assert_text('Medico foi cadastrado com sucesso.')
end



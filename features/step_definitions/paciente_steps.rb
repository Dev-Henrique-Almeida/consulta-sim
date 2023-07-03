# Remover paciente

Given('estou na pagina inicial do paciente') do
  visit pacientes_path
end

Given('seleciono o paciente com CPF {string}, data de nascimento {string} e endereco, Logradouro {string}, Complemento {string}, CEP {string}, Bairro {string}, Cidade {string}') do |cpf, data_nascimento, logradouro, complemento, cep, bairro, cidade|
  @paciente = Paciente.create(
    nome: "Nome do Paciente",
    cpf: cpf,
    data_nascimento: Date.parse(data_nascimento),
    email: "paciente123@gmail.com"
  )
  @paciente.build_endereco(
    logradouro: logradouro,
    complemento: complemento,
    cep: cep,
    bairro: bairro,
    cidade: cidade
  )
  @paciente.save
end

When('clico em remover o paciente com CPF {string}') do |cpf|
  @paciente = Paciente.find_by(cpf: cpf)
  visit paciente_path(@paciente)
  click_on 'Remover'
  @paciente.destroy
end

Then('vejo uma mensagem que o paciente foi removido com sucesso') do
  assert_text('Paciente foi removido com sucesso.')
end



# Visualizar paciente

Given('estou na pagina inicial dos pacientes') do
  visit pacientes_path
end

Given('seleciono o paciente com CPF {string}, para visualizar o restante de suas informacoes') do |cpf|
  @paciente = Paciente.create(
    nome: "Nome do Paciente",
    cpf: cpf,
    data_nascimento: Date.parse('2003-08-29'),
    email: "paciente1010@gmail.com",
    endereco_attributes: {
      logradouro: "Rua B",
      complemento: "Apto",
      cep: "12345-678",
      bairro: "Centro",
      cidade: "Sao Caetano"
    }
  )
end

When('clico em visualizar o paciente') do
  visit paciente_path(@paciente)
end

Then('vejo todas as informacoes do paciente') do
  expect(page).to have_content(@paciente.nome)
  expect(page).to have_content(@paciente.cpf)
  expect(page).to have_content(@paciente.data_nascimento.strftime('%Y-%m-%d'))
  expect(page).to have_content(@paciente.email)
  expect(page).to have_content(@paciente.endereco.logradouro)
  expect(page).to have_content(@paciente.endereco.complemento)
  expect(page).to have_content(@paciente.endereco.cep)
  expect(page).to have_content(@paciente.endereco.bairro)
  expect(page).to have_content(@paciente.endereco.cidade)
end



require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  def setup
    @paciente = Paciente.new(
      nome: 'Jose Aldo',
      data_nascimento: Date.today,
      cpf: '12345678910',
      email: 'josealdo123@gmail.com',
      endereco_attributes: {
        logradouro: 'Rua exemplo',
        complemento: 'Apto 123',
        cep: '12345-678',
        bairro: 'Centro',
        cidade: 'Cidade exemplo'
      }
    )
  end

  test 'paciente deve ser valido' do
    assert @paciente.valid?
  end

  test 'nome do paciente deve ter no minimo 5 caracteres' do
    @paciente.nome = 'ABC'
    assert_not @paciente.valid?
  end

  test 'nome do paciente deve ter no maximo 40 caracteres' do
    @paciente.nome = 'A' * 41
    assert_not @paciente.valid?
  end


end

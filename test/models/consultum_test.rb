# test/models/consultum_test.rb
require 'test_helper'

class ConsultumTest < ActiveSupport::TestCase
  def setup
    @medico = Medico.create(nome: 'Dr. João', data_nascimento: '1980-01-01', cpf: '12345678900',
                            email: 'joao@example.com', especialidade: 'Cardiologia', crm: '12345')
    @paciente = Paciente.create(nome: 'Maria', data_nascimento: '1990-01-01', cpf: '98765432100',
                                email: 'maria@example.com', endereco: 'Rua A, 123')
  end

  test "data should not be in the past" do
    @consulta = Consultum.new(data: Date.yesterday, horario: '08:00', medico: @medico, paciente: @paciente)
    assert_not @consulta.valid?
    assert_includes @consulta.errors[:data], "Data não pode ser no passado!"
  end

  test "horario should be valid" do
    @consulta = Consultum.new(data: Date.today, horario: '13:00', medico: @medico, paciente: @paciente)
    assert_not @consulta.valid?
    assert_includes @consulta.errors[:horario], "Horário inválido!"
  end
end

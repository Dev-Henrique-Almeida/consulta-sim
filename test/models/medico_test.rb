require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  def setup
    @medico = Medico.new(
      nome: 'Dr. Almeida',
      data_nascimento: Date.today,
      cpf: '12345678910',
      email: 'almeidajunior@gmail.com',
      especialidade: 'Cardiologia',
      crm: '12345'
    )
  end

  test 'medico deve ser valido' do
    assert @medico.valid?
  end

  test 'especialidade do medico deve ter no minimo 4 carecteres' do
    @medico.especialidade = 'ABC'
    assert_not @medico.valid?
  end

end

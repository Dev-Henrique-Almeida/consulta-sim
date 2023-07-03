require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  def setup
    @medico = Medico.create(
      nome: 'Dr. Fulano',
      data_nascimento: Date.today,
      cpf: '12345678910',
      email: 'fulano@examplo.com',
      especialidade: 'Cardiologia',
      crm: '12345'
    )

    @paciente = Paciente.create(
      nome: 'Fulano de tal',
      data_nascimento: Date.today,
      cpf: '12345678910',
      email: 'fulano01@gmail.com'
    )

    @consultum = Consultum.new(
      data: Date.today,
      horario: '08:00',
      medico: @medico,
      paciente: @paciente,
    )

  end
end

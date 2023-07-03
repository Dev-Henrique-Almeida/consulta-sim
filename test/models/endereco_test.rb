require "test_helper"

class EnderecoTest < ActiveSupport::TestCase
  def setup
    @endereco = Endereco.new(
      logradouro: 'Rua exemplo',
      complemento: 'Apto 123',
      cep: '12345-789',
      bairro: 'Centro',
      cidade: 'Cidade Exemplo',
      paciente: Paciente.new
    )
  end

  test 'endereco deve ser valido' do
    assert @endereco.valid?
  end

  test 'logradouro do endereco deve estar presente' do
    @endereco.logradouro = ''
    assert_not @endereco.valid?
  end

end

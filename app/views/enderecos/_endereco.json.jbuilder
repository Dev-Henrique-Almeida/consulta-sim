json.extract! endereco, :id, :logradouro, :complemento, :cep, :bairro, :cidade, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)

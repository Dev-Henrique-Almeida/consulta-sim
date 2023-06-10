json.extract! medico, :id, :nome, :data_nascimento, :cpf, :email, :especialidade, :crm, :consultas_id, :created_at, :updated_at
json.url medico_url(medico, format: :json)

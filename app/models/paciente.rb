class Paciente < ApplicationRecord
  has_one :endereco, dependent: :destroy
end

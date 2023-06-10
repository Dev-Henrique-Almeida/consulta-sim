class Medico < ApplicationRecord
  has_many :consultas
  has_many :pacientes, through: :consultas
end

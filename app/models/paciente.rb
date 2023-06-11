class Paciente < ApplicationRecord
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco, allow_destroy: true
  has_many :consultums
  has_many :medicos, through: :consultums

  validates :nome, presence: true, length: {in: 5..40}
  validate :data_nascimento_presente
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  def data_nascimento_presente
    if data_nascimento.present? && data_nascimento > Date.today
      errors.add(:data, "Data não pode ser no futuro!")
    end
  end

end

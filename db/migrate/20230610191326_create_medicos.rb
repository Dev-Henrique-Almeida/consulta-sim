class CreateMedicos < ActiveRecord::Migration[7.0]
  def change
    create_table :medicos do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :cpf
      t.string :email
      t.string :especialidade
      t.string :crm
      t.references :consultas, null: false, foreign_key: true

      t.timestamps
    end
  end
end

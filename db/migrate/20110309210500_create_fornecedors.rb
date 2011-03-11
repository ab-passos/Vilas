class CreateFornecedors < ActiveRecord::Migration
  def self.up
    create_table :fornecedors do |t|
      t.string :nome
      t.text :morada
      t.string :localidade
      t.integer :numeroContribuinte
      t.text :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :fornecedors
  end
end

class CreateModelos < ActiveRecord::Migration
  def self.up
    create_table :modelos do |t|
      t.integer :marca_id
      t.string :modelo
      t.integer :cilindrada
      t.string :nMotor
      t.integer :tipoViatura_id
      t.integer :combustivel_id
      t.integer :cavalagem
      t.integer :anoInicial
      t.integer :anoFinal

      t.timestamps
    end
  end

  def self.down
    drop_table :modelos
  end
end

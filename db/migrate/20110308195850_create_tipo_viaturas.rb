class CreateTipoViaturas < ActiveRecord::Migration
  def self.up
    create_table :tipo_viaturas do |t|
      t.string :tipoViatura

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_viaturas
  end
end

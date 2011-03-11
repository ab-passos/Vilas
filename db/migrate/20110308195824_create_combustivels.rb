class CreateCombustivels < ActiveRecord::Migration
  def self.up
    create_table :combustivels do |t|
      t.string :tipoCombustivel

      t.timestamps
    end
  end

  def self.down
    drop_table :combustivels
  end
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110309210500) do

  create_table "combustivels", :force => true do |t|
    t.string   "tipoCombustivel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "familia", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fornecedors", :force => true do |t|
    t.string   "nome"
    t.text     "morada"
    t.string   "localidade"
    t.integer  "numeroContribuinte"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marcas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modelos", :force => true do |t|
    t.integer  "marca_id"
    t.string   "modelo"
    t.integer  "cilindrada"
    t.string   "nMotor"
    t.integer  "tipoViatura_id"
    t.integer  "combustivel_id"
    t.integer  "cavalagem"
    t.integer  "anoInicial"
    t.integer  "anoFinal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_viaturas", :force => true do |t|
    t.string   "tipoViatura"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

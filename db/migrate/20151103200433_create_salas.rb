class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.string :salaFull
      t.string :salaMedia
      t.string :salaBasica

      t.timestamps
    end
  end
end

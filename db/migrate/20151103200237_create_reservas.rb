class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.date :dia
      t.integer :hora

      t.timestamps
    end
  end
end

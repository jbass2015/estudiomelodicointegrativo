class CreateReservaSalas < ActiveRecord::Migration
  def change
    create_table :reserva_salas do |t|
      t.references :reserva, index: true
      t.references :sala, index: true

      t.timestamps
    end
  end
end

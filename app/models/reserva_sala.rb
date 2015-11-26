class ReservaSala < ActiveRecord::Base
  belongs_to :reservas
  belongs_to :salas

  validates :reservas, presence: true
  validates :salas, presence: true


end

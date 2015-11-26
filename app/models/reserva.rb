class Reserva < ActiveRecord::Base
  belongs_to :sala

  has_many :reserva_sala
  has_many :salas, :through => :reserva_sala

  validates :dia, presence: true
  validates :hora, presence: true



end

class Sala < ActiveRecord::Base
  belongs_to :reservas

  has_many :reserva_sala
  has_many :reservas, :through => :reserva_sala

  validates :salaFull, presence: true
  validates :salaMedia, presence: true
  validates :salaBasica, presence: true

end

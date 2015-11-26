class ReservaSalasController < ApplicationController
  before_action :set_reserva_sala, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]
  respond_to :html

  def index
    @reserva_salas = ReservaSala.all
    respond_with(@reserva_salas)
  end

  def show
    respond_with(@reserva_sala)
  end

  def new
    @reserva_sala = ReservaSala.new
    respond_with(@reserva_sala)
  end

  def edit
  end

  def create
    @reserva_sala = ReservaSala.new(reserva_sala_params)
    @reserva_sala.save
    respond_with(@reserva_sala)
  end

  def update
    @reserva_sala.update(reserva_sala_params)
    respond_with(@reserva_sala)
  end

  def destroy
    @reserva_sala.destroy
    respond_with(@reserva_sala)
  end

  private
    def set_reserva_sala
      @reserva_sala = ReservaSala.find(params[:id])
    end

    def reserva_sala_params
      params.require(:reserva_sala).permit(:reserva_id, :sala_id)
    end
end

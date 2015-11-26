class SalasController < ApplicationController
  before_action :set_sala, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]
  respond_to :html

  def index
    @salas = Sala.all
    respond_with(@salas)
  end

  def show
    respond_with(@sala)
  end

  def new
    @sala = Sala.new
    respond_with(@sala)
  end

  def edit
  end

  def create
    @sala = Sala.new(sala_params)
    
    respond_with(@sala)
  end

  def update
    @sala.update(sala_params)
    respond_with(@sala)
  end

  def destroy
    @sala.destroy
    respond_with(@sala)
  end

  def show
    @reservas = @sala.reserva.all
  end


  private
    def set_sala
      @sala = Sala.find(params[:id])
    end

    def sala_params
      params.require(:sala).permit(:salaFull, :salaMedia, :salaBasica)
    end
end

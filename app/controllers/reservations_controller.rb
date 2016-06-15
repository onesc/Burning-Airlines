class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def show
    render json: @reservation
  end

  def new
    @reservation = Reservation.new();
  end

  private

  def set_flight
    @reservation = Reservation.find(params[:id])
  end

end

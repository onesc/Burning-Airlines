class PlanesController < ApplicationController
  before_action :set_plane, only: [:show, :edit, :update, :destroy]

  # GET /planes
  # GET /planes.json
  def index
    @planes = Plane.all
    render json: @planes
  end

  # GET /planes/1
  # GET /planes/1.json
  def show
    render json: @plane
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plane
      @plane = Plane.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plane_params
      params.fetch(:plane, {})
    end
end

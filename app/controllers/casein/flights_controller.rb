# Scaffolding generated by Casein v5.1.1.5

module Casein
  class FlightsController < Casein::CaseinController

    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]

    def index
      @casein_page_title = 'Flights'
  		@flights = Flight.order(sort_order(:number)).paginate :page => params[:page]
    end

    def show
      @casein_page_title = 'View flight'
      @flight = Flight.find params[:id]
    end

    def new
      @casein_page_title = 'Add a new flight'
    	@flight = Flight.new
    end

    def create
      @flight = Flight.new flight_params

      if @flight.save
        flash[:notice] = 'Flight created'
        redirect_to casein_flights_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new flight'
        render :action => :new
      end
    end

    def update
      @casein_page_title = 'Update flight'

      @flight = Flight.find params[:id]

      if @flight.update_attributes flight_params
        flash[:notice] = 'Flight has been updated'
        redirect_to casein_flights_path
      else
        flash.now[:warning] = 'There were problems when trying to update this flight'
        render :action => :show
      end
    end

    def destroy
      @flight = Flight.find params[:id]

      @flight.destroy
      flash[:notice] = 'Flight has been deleted'
      redirect_to casein_flights_path
    end

    private

      def flight_params
        params.require(:flight).permit(:number, :from, :to, :date, :plane_id)
      end

  end
end

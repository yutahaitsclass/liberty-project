class AdminsController < ApplicationController

    def index
         @reservations = Reservation.all
         @firstday=Date.today+(params[:times].to_i-1)*7
    end

     def new
        @reservation=Reservation.new
        @datetime = DateTime.new(params[:year].to_i, params[:month].to_i,params[:day].to_i,params[:hour].to_i,params[:minute].to_i)
        

    end

    def create
        @reservation = Reservation.new(admin_reservation_params)
        if @reservation.save
            # redirect_to :action => "index", :times => 1
            render plain: params.inspect
        else
            # render "index"
        end
    end
     private
      def admin_reservation_params
        params.require(:reservation).permit(:schedule, :name, :number, :phone, :email, :remarks)
      end
end

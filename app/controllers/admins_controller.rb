class AdminsController < ApplicationController
before_action :authenticate_user!
    def reservation_table
         @reservations = Reservation.all
         @firstday=Date.today+(params[:times].to_i-1)*7
         render 'index' 
    end

  


     def new
        @admin_reservation=Reservation.new
        @datetime = DateTime.new(params[:year].to_i, params[:month].to_i,params[:day].to_i,params[:hour].to_i,params[:minute].to_i)
        

    end

    def create
        @admin_reservation = Reservation.new(admin_reservation_params)
        # if @admin_reservation.save
            redirect_to :action => "reservation_table", :times => 1
            
        # else
        #    render "new"
        # end

    
    end
    
     private
      def admin_reservation_params
        params.require(:admin_reservation).permit(:schedule, :name, :number, :phone, :email, :remarks)
      end
end

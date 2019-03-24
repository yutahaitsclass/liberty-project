class ReservationsController < ApplicationController
    def reservation_table
             @reservations = Reservation.all
             @firstday=Date.today+(params[:times].to_i-1)*7
         render 'index'
    end  

    


    def new
        @reservation=Reservation.new
        @datetime = DateTime.new(params[:year].to_i, params[:month].to_i,params[:day].to_i,params[:hour].to_i,params[:minute].to_i)
    end

    def create
        @reservation = Reservation.new(reservation_params)
        if @reservation.save
             flash[:notice] = "予約が完了しました。"
            redirect_to root_url
            # render plain: params.inspect
        else
           flash[:notice] = "　予約内容に間違いがありました。再度、入力お願いします。"
           redirect_to "/reservate/1"
            

        end
    end
   
    
    def destroy
        @reservation=Reservation.find(params[:id])
        @reservation.destroy!
        redirect_to root_url
        # render plain: params.inspect
    end
    
   private
      def reservation_params
        params.require(:reservation).permit(:schedule, :name, :number, :phone, :email, :remarks)
      end

      

    
end

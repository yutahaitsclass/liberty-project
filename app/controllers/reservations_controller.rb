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
            redirect_to root_url
            # render plain: params.inspect/
        else
            render "new"
        end
    end
    def show
        #  @post = Post.find(params[:id])
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end
    
   private
      def reservation_params
        params.require(:reservation).permit(:schedule, :name, :number, :phone, :email, :remarks)
      end
end

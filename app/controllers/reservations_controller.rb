class ReservationsController < ApplicationController
def index
         @reservations = Reservation.all.order(created_at: :desc)
    end

    def new
        @reservation=Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        if @reservation.save
            redirect_to pages_index_path
            # render plain: params.inspect
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
        params.require(:reservation).permit(:schedule, :name, :phone, :mail, :remark)
      end
end

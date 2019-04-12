class QuestionAnswersController < ApplicationController
    before_action :authenticate_user!
      def index
         @qas= QuestionAnswer.all.order(created_at: :desc)
    end
    
    def new
        @qa=QuestionAnswer.new
    end

    def create
        @qa = QuestionAnswer.new(qa_params)
        if @qa.save
            redirect_to "/"
            # render plain: params.inspect
        else
            render "new"
        end
    end
     def destroy
        # render plain: params.inspect
     
        @qa=QuestionAnswer.find(params[:id])
        @qa.destroy
        redirect_to question_answers_path
    end
    
   private
      def qa_params
        params.require(:question_answer).permit(:question, :answer)
      end
end

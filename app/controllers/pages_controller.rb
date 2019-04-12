class PagesController < ApplicationController
def index
         @posts = Post.all.order(created_at: :desc)
         @qas = QuestionAnswer.all.order(created_at: :desc)
    end
end

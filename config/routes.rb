Rails.application.routes.draw do
  
   devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
       
  get "adm/:times" => "admins#reservation_table", as: "adm"
  get "adm_reservate_form/:year/:month/:day/:hour/:minute/" => "admins#new", as: "adm_reservate_form"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :admins, except: [ :edit, :update, :show]
  resources :reservations, except: [:edit, :update, :show]
   resources :posts, except: [:edit, :update, :show]
   resources :question_answers, except: [:edit, :update, :show]
   
  root "pages#index"
  get "reservate/:times" => "reservations#reservation_table", as: "reservate"
  get "reservate_form/:year/:month/:day/:hour/:minute/" => "reservations#new", as: "reservate_form"

 end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :reservations, except: [:edit, :update, :show]
   resources :posts, except: [:index,:edit, :update, :show]
   resources :admins, except: [ :edit, :update, :show]
  root "pages#index"
  get "reservate/:times" => "reservations#reservation_table", as: "reservate"
  get "reservate_form/:year/:month/:day/:hour/:minute/" => "reservations#new", as: "reservate_form"
  get "adm/:times" => "admins#reservation_table", as: "adm"
  get "adm_reservate_form/:year/:month/:day/:hour/:minute/" => "admins#new", as: "adm_reservate_form"
 end

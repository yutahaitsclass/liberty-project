Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :reservations, except: [:edit, :update, :show]
    resources :posts, except: [:index,:edit, :update, :show]
  root "pages#index"
  get "reservate/:times" => "reservations#reservation_table", as: "reservate"
  get "reservate_form/:year/:month/:day/:hour/:minute/" => "reservations#new", as: "reservate_form"
  get "admin/:times" => "admins#index", as: "admin"
   get "admin-reservate_form/:year/:month/:day/:hour/:minute/" => "admins#new", as: "admin-reservate_form"
end

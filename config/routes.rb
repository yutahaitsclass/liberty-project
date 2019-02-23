Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :reservations, except: [:edit, :update, :show]
  root "reservations#index"
  get "pages/index"=>"pages#index"
end

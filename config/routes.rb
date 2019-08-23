Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/show'
  devise_for :users
  root 'movies#index'

  resources :movies do
  	collection do
  		get 'search'
  	end
  	resources :reviews, except: [:show, :index]
  end

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

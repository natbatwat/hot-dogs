Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  post '/rate' => 'rater#create', :as => 'rate'

  devise_for :users, controllers: { :sessions => "users/sessions", :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations"}

  resources :users do
    resources :reviews
  end
  resources :playdates
  resources :events

  get '/', to: 'events#home', as: :home
  get 'users/:id/questionnaire', to: 'users#questionnaire', as: :questionnaire
  get '/suggestmedates', to: 'playdates#suggest', as: :suggest

  put 'users/:id/update_preferences', to: 'users#update_preferences', as: :update_preferences

  root 'events#home'

end

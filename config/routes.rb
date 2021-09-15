Rails.application.routes.draw do
  # get 'signup/create'
  namespace :api do
    namespace :v1 do
      resources :records
      resources :artists
    end
  end

  root to: "home#index"

  '''
    mesela refresh_controllerdaki create fonksiyonu
  '''
  post "refresh", controller: :refresh, action: :create
  post "signin", controller: :signin, action: :create
  post "signup", controller: :signup, action: :create
  delete "signin", controller: :signin, action: :destroy
end

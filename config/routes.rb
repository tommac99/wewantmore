Rails.application.routes.draw do

  get 'pages/index'
  root to: 'pages#index'

  devise_for :users

  ################################ API ###############################
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: %i[index] do
        # Can do custom stuff here
      end
    end
  end

end

Rails.application.routes.draw do

  root 'homepage#index'
  
  namespace :api do
    namespace :v1 do
      resources :daily_activities
      resources :dogs
    end
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# fetch 'http:localhost:3000/api/v1/dogs'

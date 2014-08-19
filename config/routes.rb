Rails.application.routes.draw do

  namespace :api do
    resources :works do 
      resources :characters
    end
  end

end

Rails.application.routes.draw do
  resources :bikes, :riders, :bike_shops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

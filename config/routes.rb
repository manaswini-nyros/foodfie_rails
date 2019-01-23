Rails.application.routes.draw do
	resources :restaurants, :dishes
  root to:"dishes#index"
  get "/search" => "dishes#search", :as => "search"
end

Rails.application.routes.draw do
  get  "/" => "home#top" 
  get  "tickets/request" => "ticket#req"
  post "tickets/create" => "ticket#create"
  post "tickets/:id/update" => "ticket#update"
  post "tickets/:id/destroy" => "ticket#destroy"
  get  "mypage" => "ticket#mypage"
  get  "signup" => "users#new"
  post "users/create" => "users#create"
  get  "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

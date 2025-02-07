Rails.application.routes.draw do
  get 'admin/distribute'
  get  "/" => "home#about"
  get  "/top" => "home#top" 
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

  get  "admin/distribute" => "admin#distribute"
  get  "admin/users" => "admin#users"
  post "admin/:id/update" => "admin#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

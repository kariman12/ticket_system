Rails.application.routes.draw do
  get "/" => "home#top" 
  get "tickets/request" => "ticket#req"
  post "tickets/create" => "ticket#create"
  post "tickets/:id/destroy" => "ticket#destroy"
  get "mypage" => "ticket#mypage"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

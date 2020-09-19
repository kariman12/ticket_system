Rails.application.routes.draw do
  get "/" => "home#top" 
  get "request" => "ticket#req"
  get "mypage" => "ticket#mypage"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

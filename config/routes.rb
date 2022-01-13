Rails.application.routes.draw do
  get root to: "homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  resources :post_images, only:[:new, :index, :show]
  
  get 'homes/about' => "homes#about"
end


Rails.application.routes.draw do
  
  default_url_options :host => "localhost:3000"


  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }
  
  resources :users, only: [:show]
  
  resources :insertions
  
  
  
  root to: 'staticpages#home'
  
  get '/', to: 'staticpages#home'

  get  '/about',     to: 'staticpages#about'

  get '/insertions/new',  to: 'insertions#new'

  get '/search', to: 'staticpages#search', as: "search" 

  


  #get 'insertions/user_insertions', to: 'layouts#user_insertions'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

end

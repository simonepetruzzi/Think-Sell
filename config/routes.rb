Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }

  root to: 'staticpages#home'
  
  get '/', to: 'staticpages#home'

  get  '/about',     to: 'staticpages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

end

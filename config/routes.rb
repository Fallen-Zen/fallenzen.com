Fallenzen::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :news
  
  root 'news#index'
  
  get "twitter/tweets"
  get '/work', to: 'works#index'
  get '/resume', to: 'resumes#index'
  get '/feed', to: 'news#feed',
  :as => :feed,
  :defaults => { :format => 'atom' }
end

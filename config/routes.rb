Contacts::Application.routes.draw do
  resources :contacts
  root :to => 'welcome#index'
end

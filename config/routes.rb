Contacts::Application.routes.draw do
  resources :contacts
  root :to => 'welcome#index'
  match '/home' => 'welcome#index'
  match '/menu' => 'contacts#menu'
end

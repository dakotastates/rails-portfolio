Rails.application.routes.draw do

  scope '/admin' do
    devise_for :users, path: '/', skip: [:registrations, :passwords]

    devise_scope :user do
      authenticated :user do
        get '/', to: 'admin#index', as: :admin_root

        resources :projects
        resources :categories

      end

      unauthenticated do
        get '/', to: 'devise/sessions#new'

      end
    end

  end
  root 'home#index'
  match '/send_mail', to: 'home#send_mail', via: 'post'
  # resources :home, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

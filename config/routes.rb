Rails.application.routes.draw do
  # devise_for :users, skip: :all
  # devise_for :users
  # resources :projects
  # get 'home/index'

  # devise_scope :user do
  #   authenticated :user do
  #     get '/admin', to: 'admin#index'
  #     resources :projects
  #     # root 'home#index', as: :authenticated_root
  #   end
  #
  #   unauthenticated do
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #   end
  # end

  # devise_for :users, path: 'admin', path_names: { sign_in: '/', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  # devise_scope :user do
  #   authenticated :user do
  #     # root 'home#index', as: :authenticated_root
  #     get '/admin', to: 'admin#index', as: :authenticated_root
  #   end
  #
  #   unauthenticated do
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #   end
  # end

  # devise_scope '/admin' do
  #   # get 'sign_in', to: 'devise/sessions#new'
  # # get '/admin', to: 'admin#index'
  #   authenticated :user do
  #     # devise_for :users
  #     get '/admin', to: 'admin#index'
  #
  #     # resources :projects
  #     # root 'home#index', as: :authenticated_root
  #   end
  #
  #   unauthenticated do
  #     get '/admin', to: 'devise/sessions#new', as: :unauthenticated_root
  #   end
  #
  # end

  scope '/admin' do
    # get '/', to: 'admin#index'
    devise_for :users, path: '/'

    devise_scope :user do
      # devise_for :users
      authenticated :user do
        get '/', to: 'admin#index', as: :admin_root
        # devise_for :users, path_names: {
        #   sign_up: ''
        # }
        resources :projects

        # root 'home#index', as: :authenticated_root
        # get '/admin', to: 'admin#index', as: :authenticated_root
      end

      unauthenticated do
        get '/', to: 'devise/sessions#new'
        # devise_for :users, path: '/', path_names: { sign_in: 'login' }
        # devise_for :users, path: '/'
        # root 'devise/sessions#new', as: :unauthenticated_root
      end
    end
    # devise_for :users
  end
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

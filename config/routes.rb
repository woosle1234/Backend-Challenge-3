Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root "articles#index"

  resources :articles do
    resources :comments
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'customer/register'
  post 'customer/create'
  get 'customer/success'
end

Rails.application.routes.draw do
  get 'control/insertar'
  post 'control/insertar_post'

  get 'control/buscar'
  get 'control/buscar_post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

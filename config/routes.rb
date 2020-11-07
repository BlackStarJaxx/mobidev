Rails.application.routes.draw do

  get 'index' => 'mobidev#index', as: 'home'
  get 'api' => 'mobidev#api'

end

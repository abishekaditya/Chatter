Rails.application.routes.draw do
  root to: 'rooms#show'
  delete 'rooms/delete' => 'rooms#delete'

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

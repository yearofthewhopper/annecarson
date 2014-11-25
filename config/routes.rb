AnneCarson::Application.routes.draw do
 root to: "homes#index"
 resource :session, only: [:new, :create, :destroy]
 resources :users, only: [:new, :create]
 resources :decks do 
 	resources :cards, except: :index
  
end
end



#   Prefix Verb   URI Pattern                              Controller#Action
#     deck_cards GET    /decks/:deck_id/cards(.:format)          cards#index
#                POST   /decks/:deck_id/cards(.:format)          cards#create
#  new_deck_card GET    /decks/:deck_id/cards/new(.:format)      cards#new
# edit_deck_card GET    /decks/:deck_id/cards/:id/edit(.:format) cards#edit
#      deck_card GET    /decks/:deck_id/cards/:id(.:format)      cards#show
#                PATCH  /decks/:deck_id/cards/:id(.:format)      cards#update
#                PUT    /decks/:deck_id/cards/:id(.:format)      cards#update
#                DELETE /decks/:deck_id/cards/:id(.:format)      cards#destroy
#          decks GET    /decks(.:format)                         decks#index
#                POST   /decks(.:format)                         decks#create
#       new_deck GET    /decks/new(.:format)                     decks#new
#      edit_deck GET    /decks/:id/edit(.:format)                decks#edit
#           deck GET    /decks/:id(.:format)                     decks#show
#                PATCH  /decks/:id(.:format)                     decks#update
#                PUT    /decks/:id(.:format)                     decks#update
               # DELETE /decks/:id(.:format)                     decks#destroy
 # asdsadsad

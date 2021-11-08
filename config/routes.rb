Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  root to: 'flats#index'

  get '/flats/:id', to: 'flats#show', as: :flat
end


# CRUD

# Read all -> index
# Read one -> show

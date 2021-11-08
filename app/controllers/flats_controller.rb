require "open-uri"

class FlatsController < ApplicationController
  def index
    # Flat.all
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

  def show
    # Flat.find(params[:id])
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end
end

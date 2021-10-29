class CatsController < ApplicationController
  def index
    response = HTTP.get("https://thecatapi.com/v1/images?api_key=YOUR-KEY-CODE-HERE")
    render json: response.parse(:json)
  end
end

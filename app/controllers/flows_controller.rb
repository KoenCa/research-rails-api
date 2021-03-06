# Controller voor het het endpoint dat alle flows terug geeft
class FlowsController < ApplicationController

  def index

    # Gebruik het MongoId model om alle flows uit de database op te halen
    render json: Flow.all.entries
  end

  def by_id

    # Gebruik het MongoId model om een bepaalde flow uit de database op te halen
    # volgens id
    render json: Flow.find(params[:id])
  end
end

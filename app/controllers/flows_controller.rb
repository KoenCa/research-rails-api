# Controller voor het flow model
class FlowsController < ApplicationController

  # Geeft alle flows uit de database terug
  def index
    render json: Flow.all.entries
  end
end

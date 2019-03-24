class HomeController < ApplicationController
  before_action :results_params, only: [:results]

  def index
    @agents = Agent.all
  end

  def results
    @neighborhoods = Neighborhood.all
    @agents = Agent.accept_income(params[:incoming])
  end

  private

  def results_params
    params.permit(:age, :incoming)
  end
end

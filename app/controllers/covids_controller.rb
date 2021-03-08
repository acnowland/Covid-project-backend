class CovidsController < ApplicationController
  def index
    response= RestClient.get("https://api.covidtracking.com/v1/states/current.json")
    result = JSON.parse(response)
    render json: result
  end

  def show
    @state = RestClient.get("https://api.covidtracking.com/v1/states/#{params[:id]}/current.json")

    render json: @state

  end


end

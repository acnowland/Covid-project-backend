class HeatMapController < ApplicationController
    def index
        response= RestClient.get("https://covid-api.mmediagroup.fr/v1/cases?country=US")
        result = JSON.parse(response)
        render json: result
    end
end

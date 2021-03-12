# README
# BACKEND FOR COVID TRACKER
============


# SOLUTION FOR PULLING IN DATA FOR COVID


### Table of Contents

* General Info
* Setup
* Code Examples
* Work in Progress



This is the backend to our current COVID tracker. This backend pulls from 2 seperate API's that allow data
manipulation for COVID facts. One API allows for GPS Coordinates to be pulled for a COVID map and the second allows for the actual data to be pulled down. OF NOTE*** The second API will be going down at the end of March 2021. 


**_Technologies_**
* Ruby on Rails
* "https://api.covidtracking.com"
* "https://covid-api.mmediagroup.fr/v1/cases?country=US"


**Setup**

First, you will want to clone the backend from the GitHub repo to make the file locally on your computer. 

Double check to make sure that your CORS is uncommented out in the Gemfile as well as to uncomment the CORS.rb section allowing access on the front end. After this, run a bundle install. Start up the backend server with 'rails s' in the terminal and you can double check to make sure server is up by checking your localhost port you are using /covids and /heat_map.



**_Code Examples_**

```
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

```

```
class HeatMapController < ApplicationController
    def index
        response= RestClient.get("https://covid-api.mmediagroup.fr/v1/cases?country=US")
        result = JSON.parse(response)
        render json: result
    end
end

```

Both of these will allow the api to be accessed from the frontend and elimate the need for seeding your database!


**_Work in Progress_**

* Will soon need to use updated API as it is going down. 


**_Created By_**

**Adam Nowland** && **Nathan Gusky**